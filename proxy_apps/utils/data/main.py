import numpy as np
import json

from .timeseries import GridNetworkDataHandler, GridNetworkNewGen

class DataHandler():
    def __init__(self, handler_params):
        self.handler_name = handler_params["data_generator"]
        if self.handler_name == "GridNetworkDataHandler": # ["Baseline", "TFDataOpt"]:
            self.data_handler = GridNetworkDataHandler(handler_params)

        elif self.handler_name == "GridNetworkNewGen": # ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc", "LSTM"]:
            self.data_handler = GridNetworkNewGen(handler_params)

    def load_data(self):
        data_dict = {}
        data_dict["input_dim"] = self.data_handler.n_cols * self.data_handler.repeat_cols
        data_dict["floatx"] = self.data_handler.dtype

        if self.handler_name == "GridNetworkDataHandler":
            scenario_data = self.data_handler.load_grid_data()

            # ------------------------------- DATA PREPROCESSING ------------------------------------------------
            X_data, Y_data = self.data_handler.create_windows(scenario_data)

            # ------------------------------- DATA NORMALIZATION ------------------------------------------------
            X_array, Y_array = self.data_handler.scale_data(X_data, Y_data)

            # output
            data_dict["data_type"] = "split_array"
            data_dict["data"] = [X_array, Y_array]

        elif self.handler_name == "GridNetworkNewGen":
            x_indexer = self.get_indexer(self.data_handler.n_rows,
                                         self.data_handler.window_size,
                                         self.data_handler.shift_size,
                                         0,
                                         self.data_handler.n_signals
                                         )
            y_indexer = self.get_indexer(self.data_handler.n_rows,
                                         self.data_handler.window_size,
                                         self.data_handler.shift_size,
                                         1,
                                         0
                                         )

            scenario_data = self.data_handler.get_training_data(x_indexer, y_indexer)

            # output
            data_dict["data_type"] = "data_generator"
            data_dict["data"] = scenario_data

        return data_dict

    # @tf.function(experimental_compile=True)
    def get_indexer(self, n_rows, window_size, shift_size, start_point, leave_last):
        return np.arange(window_size)[None, :] + start_point + shift_size * np.arange(
            ((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]


class NpEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, np.integer):
            return int(obj)
        elif isinstance(obj, np.floating):
            return float(obj)
        elif isinstance(obj, np.ndarray):
            return obj.tolist()
        else:
            return super(NpEncoder, self).default(obj)