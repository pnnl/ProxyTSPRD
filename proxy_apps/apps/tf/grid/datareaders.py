import functools
import numpy as np
from .. import tf

from .. import TransientDataset

def get_indexer(
        n_rows, 
        window_size, 
        shift_size, 
        start_point, 
        leave_last
    ):
        return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]

class GridDataGenerator_TF(tf.keras.utils.Sequence):
    'Characterizes a dataset for TensorFlow'
    def __init__(
        self, 
        dir_list, 
        handler_params, 
        dtype, 
        scale_factor=2*np.pi, 
        norm=True, 
        validation_files=None
    ):
        'Initialization'
        self.list_of_directories = dir_list
        self.n_scenarios = len(self.list_of_directories)
        self.n_rows = handler_params["n_rows"]
        self.n_cols = handler_params["n_cols"]
        self.repeat_cols = handler_params["repeat_cols"]
        self.scale_factor = scale_factor 
        self.norm = norm 
        self.iw_params = handler_params["iw_params"]
        self.ow_params = handler_params["ow_params"]
        self.d_type = dtype
        
    def get_data(self, x_indexer, y_indexer):
        self.x_indexer = x_indexer
        self.y_indexer = y_indexer
        
        complete_data = list(map(functools.partial(self.read_data), self.list_of_directories))
        self.X = np.vstack([arr[0] for arr in complete_data]) # stacked_array[0, :, :]
        self.y = np.vstack([arr[1] for arr in complete_data]) # stacked_array[1, :, :]
        
        assert self.X.shape[0]==self.y.shape[0]
        
    def read_data(self, dir_path): 
        dataset = TransientDataset(dir_path)
        raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), self.repeat_cols, axis=1)[:self.n_rows, :].astype(self.d_type)

        split_index = (self.n_cols * self.repeat_cols) // 2
        flat_X_data = raw_data[self.x_indexer]
        flat_Y_data = raw_data[self.y_indexer]

        if self.norm:
            flat_X_data[:, :, :split_index] = self.scale_factor*(flat_X_data[:, :, :split_index] - 60)
            flat_X_data[:, :, split_index:] = 10*(flat_X_data[:, :, split_index:] - 1)

            flat_Y_data[:, :, :split_index] = self.scale_factor*(flat_Y_data[:, :, :split_index] - 60)
            flat_Y_data[:, :, split_index:] = 10*(flat_Y_data[:, :, split_index:] - 1)

        return flat_X_data, flat_Y_data

    def __len__(self):
        'Denotes the total number of samples'
        return self.X.shape[0]
    
    def __getitem__(self, index):
        'Generates one sample of data'
        return self.X[index, :], self.y[index, :]
    
    def __call__(self):
        for i in range(self.X.shape[0]):
            yield self.__getitem__(i)

class GridDataGenerator_TFConv2D(GridDataGenerator_TF):
    def __init__(self, dir_list, handler_params, dtype, norm=True, validation_files=None):
        super().__init__(dir_list, handler_params, dtype, norm, validation_files)
        self.n_channels = handler_params["n_channels"]

    def __getitem__(self, index):
        'Generates one sample of data'
        X_out = np.repeat(self.X[index, np.newaxis, :, :], self.n_channels, axis=0)
        y_out = np.repeat(self.y[index, np.newaxis, :, :], self.n_channels, axis=0)
        return X_out, y_out
    
class GridDataGenerator_TFSTGCN(GridDataGenerator_TF):
    def __init__(self, dir_list, handler_params, dtype, norm=True, validation_files=None):
        super().__init__(
            dir_list, 
            handler_params, 
            dtype, 
            norm, 
            validation_files
        )
        self.n_features = 2
        self.sel_neighbors = 4
        
    def read_data(self, dir_path): 
        # raw data
        dataset = TransientDataset(dir_path)
        
        # concat and repeat
        concat_data = np.stack([dataset.F, dataset.Vm], axis=2)
        self.n_nodes = dataset.F.shape[1]

        # repeat nodes
        repeated_data = np.repeat(concat_data, self.repeat_cols, axis=1)[:, :self.n_rows, :].astype(self.d_type)
        
        # raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), self.repeat_cols, axis=1)[:self.n_rows, :].astype(self.d_type)

        # split_index = (self.n_cols * self.repeat_cols) // 2
        flat_X_data = np.transpose(repeated_data[self.x_indexer], [0, 3, 1, 2])
        flat_Y_data = np.transpose(repeated_data[self.y_indexer], [0, 3, 1, 2])
        
        if self.norm:
            flat_X_data[:, 0, :, :] = self.scale_factor*(flat_X_data[:, 0, :, :] - 60)
            flat_X_data[:, 1, :, :] = 10*(flat_X_data[:, 1, :, :] - 1)

            flat_Y_data[:, 0, :, :] = self.scale_factor*(flat_Y_data[:, 0, :, :] - 60)
            flat_Y_data[:, 1, :, :] = 10*(flat_Y_data[:, 1, :, :] - 1)

        return flat_X_data, flat_Y_data

    def __getitem__(self, index):
        'Generates one sample of data'
        X_out = self.X[index, :]
        y_out = self.y[index, :]
        return X_out, y_out