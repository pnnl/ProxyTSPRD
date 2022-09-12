import os
import sys
import numpy as np
import json
import torch
import tensorflow as tf

#from numba import jit
#from numba.experimental import jitclass

from .timeseries import GridNetworkSequentialDataGenerator_PT, GridNetworkSequentialDataGenerator_TF # GridNetworkDataHandler, GridNetworkNewGen, GridNetworkWindowDataGenerator, GridDataGenPyTorch
from .image import ImageDataHandler_TF, ImageDataSequentialDataGenerator_TF, ImageDataSequentialDataGenerator_PT

class DataHandler():
    def __init__(
        self, 
        handler_name,
        handler_params, 
        dtype, 
        training_files, 
        validation_files=None
    ):
        # data handler for timeseries data
        self.handler_name = handler_name# handler_params["data_generator"]
        self.data_handler = getattr(sys.modules[__name__], self.handler_name)(training_files, handler_params, dtype, validation_files=validation_files)
        
        # self.n_scenarios = handler_params["n_scenarios"]
        # print("Directory list: ", dir_list)
        # if training_data is not None: 
        #    self.n_scenarios = len(training_data)
        
        # if self.handler_name == "GridNetworkDataHandler": # ["Baseline", "TFDataOpt"]:
        #     self.data_handler = GridNetworkDataHandler(handler_params, dtype)
        # elif self.handler_name == "GridNetworkNewGen": # ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc", "LSTM"]:
        #     self.data_handler = GridNetworkNewGen(handler_params, dtype)
        # elif self.handler_name == "GridNetworkSequentialDataGenerator": # ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc", "LSTM"]:
        #     print("[INFO] TensorFlow Grid Network Data Generator")
        #     self.data_handler = GridNetworkWindowDataGenerator(dir_list, handler_params, dtype)
        # elif self.handler_name == "GridDataGenPyTorch": # ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc", "LSTM"]:
        #     print("[INFO] PyTorch Data Generator")
        #     self.data_handler = GridDataGenPyTorch(dir_list, handler_params, dtype)
        # elif self.handler_name == "ImageDataHandler":
        #     self.data_handler = ImageDataHandler(handler_params, dtype)

    def get_indexer(self, n_rows, window_size, shift_size, start_point, leave_last):
        return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]
        
    def load_data(self, x_indexer=None, y_indexer=None):
        data_dict = {}

        if self.handler_name.split('_')[0] == "GridNetworkSequentialDataGenerator":
            # scenario_data = 
            self.data_handler.get_training_data(x_indexer, y_indexer)
            if self.handler_name.split('_')[1] == "TF":
                # print(X.shape, y.shape)
                # scenario_data = tf.data.Dataset.from_tensor_slices((X, y))
                # self.data_handler.get_training_data(x_indexer, y_indexer)
                scenario_data = tf.data.Dataset.from_generator(self.data_handler,
                                                              output_signature = (tf.TensorSpec(shape=(x_indexer.shape[1], 
                                                                                                       self.data_handler.n_cols * self.data_handler.repeat_cols), 
                                                                                                dtype=self.data_handler.d_type),
                                                                                  tf.TensorSpec(shape=(y_indexer.shape[1], 
                                                                                                       self.data_handler.n_cols * self.data_handler.repeat_cols), 
                                                                                                dtype=self.data_handler.d_type)))
            elif self.handler_name.split('_')[1] == "PT":
                # self.data_handler.get_training_data(x_indexer, y_indexer)
                scenario_data = self.data_handler

            # output
            data_dict["input_dim"] = self.data_handler.n_cols * self.data_handler.repeat_cols
            data_dict["repeat_cols"] = self.data_handler.repeat_cols
            data_dict["training_data_format"] = "data_generator"
            data_dict["n_windows"] = x_indexer.shape[0]
            data_dict["look_back"] = self.data_handler.look_back
            data_dict["look_forward"] = self.data_handler.look_forward
            data_dict["n_scenarios"] = self.data_handler.n_scenarios
            data_dict["n_points"] = data_dict["n_scenarios"] * data_dict["n_windows"]
            data_dict["data"] = scenario_data
        
        elif self.handler_name.split('_')[0] == "ImageDataSequentialDataGenerator":
            self.data_handler.get_training_data()
            if self.handler_name.split('_')[1] == "TF":
                # print("I am here!")
                data_dict["data"] = tf.data.Dataset.from_generator(self.data_handler,
                                                              output_signature = (tf.TensorSpec(shape=(32, 32, 3), dtype=tf.float32),
                                                                                  tf.TensorSpec(shape=(1), dtype=tf.uint8)))
                # print(f123)
            elif self.handler_name.split('_')[1] == "PT":
                data_dict["data"] = self.data_handler
                
            data_dict['training_data_format'] = "image_data_generator"

        elif self.handler_name.split('_')[0] == "ImageDataHandler":
            train_dataset, val_dataset = self.data_handler.load_data()
            data_dict["training_data"] = train_dataset
            data_dict["val_data"] = val_dataset
            data_dict['training_data_format'] = "image_data_generator"

        elif self.handler_name == "GridNetworkDataHandler":
            scenario_data = self.data_handler.load_grid_data()

            # ------------------------------- DATA PREPROCESSING ------------------------------------------------
            X_data, Y_data = self.data_handler.create_windows(scenario_data)


            # ------------------------------- DATA NORMALIZATION ------------------------------------------------
            X_array, Y_array = self.data_handler.scale_data(X_data, Y_data)

            # output
            data_dict["input_dim"] = self.data_handler.n_cols * self.data_handler.repeat_cols
            data_dict["training_data_format"] = "split_array"
            data_dict["n_windows"] = len(X_data)
            data_dict["window_size"] = self.data_handler.window_size
            data_dict["n_scenarios"] = self.data_handler.n_scenarios
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
            data_dict["input_dim"] = self.data_handler.n_cols * self.data_handler.repeat_cols
            data_dict["training_data_format"] = "data_generator"
            data_dict["n_windows"] = x_indexer.shape[0]
            data_dict["window_size"] = self.data_handler.window_size
            data_dict["n_scenarios"] = self.data_handler.n_scenarios
            data_dict["n_points"] = data_dict["n_scenarios"] * data_dict["n_windows"] * data_dict["window_size"]
            data_dict["data"] = scenario_data

#         elif self.handler_name == "GridDataGenPyTorch":
#             self.data_handler.get_training_data(x_indexer, y_indexer)
#             scenario_data = self.data_handler
#             # torch.utils.data.DataLoader(self.data_handler, batch_size=batch_size, pin_memory=True, num_workers=int(self.n_cpus))

#             # output
#             data_dict["input_dim"] = self.data_handler.n_cols * self.data_handler.repeat_cols
#             data_dict["training_data_format"] = "data_generator"
#             data_dict["n_windows"] = x_indexer.shape[0]
#             data_dict["look_back"] = self.data_handler.look_back
#             data_dict["look_forward"] = self.data_handler.look_forward
#             data_dict["n_scenarios"] = self.n_scenarios
#             data_dict["n_points"] = data_dict["n_scenarios"] * data_dict["n_windows"]
#             data_dict["data"] = scenario_data

        return data_dict

    # @tf.function(experimental_compile=True)
    # def get_indexer(self, n_rows, window_size, shift_size, start_point, leave_last):
    #     window = np.arange(window_size)[None, :] + start_point + shift_size * np.arange(
    #         ((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]
    #     return window


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