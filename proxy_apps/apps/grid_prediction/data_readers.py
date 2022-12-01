import functools
import numpy as np
import tensorflow as tf

import torch
from .grid import TransientDataset

def get_indexer(
        n_rows, 
        window_size, 
        shift_size, 
        start_point, 
        leave_last
    ):
        return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]

class GridNetworkSequentialDataGenerator_PT(torch.utils.data.Dataset):
    'Characterizes a dataset for PyTorch'
    def __init__(self, dir_list, handler_params, dtype, scale_factor=2*np.pi, norm=True, validation_files=None):#, n_rows, n_cols, n_repeat, x_indexer, y_indexer, scale_factor=2, norm=True, d_type="float64"):
        'Initialization'
        self.list_of_directories = dir_list
        self.n_scenarios = len(self.list_of_directories)
        self.n_rows = handler_params["n_rows"]
        self.n_cols = handler_params["n_cols"]
        self.repeat_cols = handler_params["repeat_cols"]
        self.scale_factor = scale_factor # handler_params["scale_factor"]
        self.norm = norm # handler_params["norm"]
        self.iw_params = handler_params["iw_params"]
        self.ow_params = handler_params["ow_params"]
        # self.look_back = handler_params["look_back"]
        # self.look_forward = handler_params["look_forward"]
        # self.shift_size = handler_params["shift_size"]
        # self.stride = handler_params["stride"]
        # self.n_signals = handler_params["n_signals"]
        self.d_type = dtype
        
    def get_data(self, x_indexer, y_indexer):
        self.x_indexer = x_indexer
        self.y_indexer = y_indexer
        
        complete_data = list(map(functools.partial(self.read_data), self.list_of_directories))
        self.X = np.vstack([arr[0] for arr in complete_data]) # stacked_array[0, :, :]
        self.y = np.vstack([arr[1] for arr in complete_data]) # stacked_array[1, :, :]
        
        assert self.X.shape[0]==self.y.shape[0]
        
    def read_data(self, dir_path): # , n_rows, n_cols, n_repeat, x_indexer, y_indexer, scale_factor, norm, d_type
        dataset = TransientDataset(dir_path)
        raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), self.repeat_cols, axis=1)[:self.n_rows, :].astype(self.d_type)

        split_index = (self.n_cols * self.repeat_cols) // 2
        flat_X_data = raw_data[self.x_indexer]#.reshape(-1, self.n_cols*self.n_repeat)
        flat_Y_data = raw_data[self.y_indexer]#.reshape(-1, self.n_cols*self.n_repeat)
        # print(flat_X_data.shape, flat_Y_data.shape)

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
    
class GridNetworkSequentialDataGenerator_TF(tf.keras.utils.Sequence):
    'Characterizes a dataset for TensorFlow'
    def __init__(self, dir_list, handler_params, dtype, scale_factor=2*np.pi, norm=True, validation_files=None):#, n_rows, n_cols, n_repeat, x_indexer, y_indexer, scale_factor=2, norm=True, d_type="float64"):
        'Initialization'
        self.list_of_directories = dir_list
        self.n_scenarios = len(self.list_of_directories)
        self.n_rows = handler_params["n_rows"]
        self.n_cols = handler_params["n_cols"]
        self.repeat_cols = handler_params["repeat_cols"]
        self.scale_factor = scale_factor # handler_params["scale_factor"]
        self.norm = norm # handler_params["norm"]
        self.look_back = handler_params["look_back"]
        self.look_forward = handler_params["look_forward"]
        self.shift_size = handler_params["shift_size"]
        self.stride = handler_params["stride"]
        self.n_signals = handler_params["n_signals"]
        self.d_type = dtype
        
    def get_training_data(self, x_indexer, y_indexer):
        self.x_indexer = x_indexer
        self.y_indexer = y_indexer
        
        complete_data = list(map(functools.partial(self.get_data), self.list_of_directories))
        self.X = np.vstack([arr[0] for arr in complete_data]) # stacked_array[0, :, :]
        self.y = np.vstack([arr[1] for arr in complete_data]) # stacked_array[1, :, :]
        
        assert self.X.shape[0]==self.y.shape[0]
        
    def get_data(self, dir_path): # , n_rows, n_cols, n_repeat, x_indexer, y_indexer, scale_factor, norm, d_type
        dataset = TransientDataset(dir_path)
        raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), self.repeat_cols, axis=1)[:self.n_rows, :].astype(self.d_type)

        split_index = (self.n_cols * self.repeat_cols) // 2
        flat_X_data = raw_data[self.x_indexer]#.reshape(-1, self.n_cols*self.n_repeat)
        flat_Y_data = raw_data[self.y_indexer]#.reshape(-1, self.n_cols*self.n_repeat)
        print(flat_X_data.shape, flat_Y_data.shape)

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
        # print(self.X[index, :].shape, self.y[index, :].shape)
        return self.X[index, :], self.y[index, :]
    
    def __call__(self):
        for i in range(self.X.shape[0]):
            yield self.__getitem__(i)