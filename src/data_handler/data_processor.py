import numpy as np
import tensorflow as tf

class DataProcessor():
    def __init__(self):
        self.data = None

        self.selected_zone = None
        self.selected_cols = None
        self.sel_data = None

    #def load_data(self, filepath, sep):
    #   assert isinstance(filename, 'str'), "Invalid data type for the filepath, expecting string."
    #   assert os.path.exists(filepath), "File doesn't exist."

    def set_data(self, df):
        assert isinstance(df, pd.DataFrame), "Expected pandas DataFrame, found " + str(type(df))
        
        self.data = df
        self.add_datetime()

        self.sel_data = self.data

    def add_datetime(self, year=2018):
        assert isinstance(year, int), "Expected integer, found " + str(type(year))

        # merge columns into a single date time 
        self.data['datetime'] = self.data['date'].astype(str) + ' ' + self.data['time'].astype(str)
        
        # create datetime
        self.data['datetime'] = pd.to_datetime(self.data["datetime"].astype(str), format='%Y-%m-%d %H:%M:%S %p')

    def sel_zone(self, zone_no):
        assert isinstance(zone_no, int), "Expected integer, found " + str(type(zone_no))
        assert zone_no in self.data["cvlzId"].values, "The provided zone number doesn't exist"

        # select data for the selected zone
        self.selected_zone = zone_no
        self.sel_data = self.data[self.data["cvlzId"] == self.selected_zone].    vet_index(drop=True)

        # set datetime index for the zone data
        self.sel_data = self.sel_data.drop_duplicates(subset=['datetime'], keep='first')
        self.sel_data = self.sel_data.set_index('datetime')     

    def sel_columns(self, sel_cols):
        assert isinstance(sel_cols, list), "Expected a list of columns, found " + str(type(sel_cols))
        
        # select columns
        self.selected_cols = sel_cols
        self.sel_data = self.sel_data[self.selected_cols]

class SequentialDataHandler():
    def __init__(self, input_width, label_width, shift, df_columns, label_columns=None):
        
        # Work out the label column indices.
        self.label_columns = label_columns
        if label_columns is not None:
            self.label_columns_indices = {name: i for i, name in
                                        enumerate(label_columns)}
        self.column_indices = {name: i for i, name in
                               enumerate(df_columns)}

        # Work out the window parameters.
        self.input_width = input_width
        self.label_width = label_width
        self.shift = shift

        self.total_window_size = input_width + shift

        self.input_slice = slice(0, input_width)
        self.input_indices = np.arange(self.total_window_size)[self.input_slice]

        self.label_start = self.total_window_size - self.label_width
        self.labels_slice = slice(self.label_start, None)
        self.label_indices = np.arange(self.total_window_size)[self.labels_slice]

    def __repr__(self):
        return '\n'.join([
            f'Total window size: {self.total_window_size}',
            f'Input indices: {self.input_indices}',
            f'Label indices: {self.label_indices}',
            f'Label column name(s): {self.label_columns}'])

    def split_window(self, features):
        inputs = features[:, self.input_slice, :]
        labels = features[:, self.labels_slice, :]
        if self.label_columns is not None:
            labels = tf.stack(
                [labels[:, :, self.column_indices[name]] for name in self.label_columns],
                axis=-1)

        # Slicing doesn't preserve static shape information, so set the shapes
        # manually. This way the `tf.data.Datasets` are easier to inspect.
        inputs.set_shape([None, self.input_width, None])
        labels.set_shape([None, self.label_width, None])

        return inputs, labels
    
    def make_dataset(self, data):
        data = np.array(data, dtype=np.float32)
        ds = tf.keras.preprocessing.timeseries_dataset_from_array(
          data=data,
          targets=None,
          sequence_length=self.total_window_size,
          sequence_stride=1,
          shuffle=True,
          batch_size=32,)

        ds = ds.map(self.split_window)

        return ds

class TabularDataHandler():
    def __init__(self, data):
        self.data = data

    def sel_nodes(self, node_list):
        self.sel_nodes = node_list
        self.sel_data = self.data[self.sel_nodes]

    def add_temporal_features(self):
        self.sel_data.loc[:, "dow"] = self.sel_data.index.weekday.values
        self.sel_data.loc[:, "hour"] = self.sel_data.index.hour.values
        self.sel_data.loc[:, "minute"] = self.sel_data.index.minute.values

    def resample(self, freq, agg_dict):
        df_resampled = self.sel_data.resample(freq).agg(agg_dict)
        df_resampled.columns = [''.join(col).strip() for col in df_resampled.columns.values]

        return df_resampled.astype('int')