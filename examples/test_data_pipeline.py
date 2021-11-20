import os
import numpy as np
import pandas as pd
import torch
import tensorflow as tf

# Custom Library
import sys
sys.path.append('../')

from proxy_apps import ProxyTSPRD
from proxy_apps.utils import file_reader, path_handler

class ProcessDataFile(tf.data.Dataset):
    def _generator(file_name, n_rows, n_cols, n_repeat, x_indexer, y_indexer, norm, scale_factor):
        # Opening the file
        dataset = TransientDataset(file_name.decode('utf-8'))
        raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), n_repeat, axis=1)[:n_rows, :]
        
        split_index = (n_cols * n_repeat) // 2
        flat_X_data = raw_data[x_indexer]
        flat_Y_data = raw_data[y_indexer]
        
        if norm:
            # normalization specific to grid strategy only
            flat_X_data[:, :, :split_index] = scale_factor*(flat_X_data[:, :, :split_index] - 60)
            flat_X_data[:, :, split_index:] = 10*(flat_X_data[:, :, split_index:] - 1)
            
            flat_Y_data[:, :, :split_index] = scale_factor*(flat_Y_data[:, :, :split_index] - 60)
            flat_Y_data[:, :, split_index:] = 10*(flat_Y_data[:, :, split_index:] - 1)
            
        yield (flat_X_data, flat_Y_data)

    def __new__(cls, file_name, n_rows, flat_n_rows, n_cols, n_repeat, x_indexer, y_indexer, d_type, norm=True, scale_factor=2*np.pi):
        # print("Enter")
        return tf.data.Dataset.from_generator(
            cls._generator,
            output_signature = (tf.TensorSpec(shape=(x_indexer.shape[0], x_indexer.shape[1], n_cols*n_repeat), dtype=d_type),
                                tf.TensorSpec(shape=(y_indexer.shape[0], y_indexer.shape[1], n_cols*n_repeat), dtype=d_type)),
            args=(file_name, n_rows, n_cols, n_repeat, x_indexer, y_indexer, norm, scale_factor,)
        )

class GridNetworkWindowDataGenerator():
    def __init__(self, dir_list, handler_params, dtype):#scenario_dir, n_rows, n_cols, dtype, repeat_cols=1):
        self.dir_list = dir_list
        self.n_rows = handler_params["n_rows"]
        self.n_cols = handler_params["n_cols"]
        self.repeat_cols = handler_params["repeat_cols"]
        self.look_back = handler_params["look_back"]
        self.look_forward = handler_params["look_forward"]
        self.shift_size = handler_params["shift_size"]
        self.stride = handler_params["stride"]
        self.n_signals = handler_params["n_signals"]
        self.data_type = dtype

    # @tf.function(experimental_compile=True)
    def get_training_data(self, x_indexer, y_indexer, deterministic=False):
        # load data and print list of files
        # print('[INFO]: Loading the datasets from the directory:', self.scenario_dir)
        # self.dir_list = [self.scenario_dir + "/" + f + "/" for f in os.listdir(self.scenario_dir)[:self.n_scenarios]]
        
        list_files = tf.data.Dataset.from_tensor_slices(self.dir_list)
        trimmed_scenarios = list_files.interleave(lambda x: ProcessDataFile(x, self.n_rows, 
                                                                              x_indexer.shape[0] * x_indexer.shape[1], 
                                                                      self.n_cols, self.repeat_cols, 
                                                                      x_indexer, y_indexer,
                                                                      self.data_type
                                                                     ).prefetch(tf.data.AUTOTUNE),
                                          num_parallel_calls=tf.data.AUTOTUNE,
                                          #cycle_length=len(self.dir_list), 
                                          #block_length=1,
                                          deterministic=deterministic
                                         )
        
        flat_data = trimmed_scenarios.flat_map(lambda x, y: tf.data.Dataset.from_tensor_slices((x, y)))
        
        return flat_data

class GridNetworkSequentialDataGenerator_TF(tf.keras.utils.Sequence):
    'Characterizes a dataset for TensorFlow'
    def __init__(self, dir_list, handler_params, dtype, scale_factor=2*np.pi, norm=True):#, n_rows, n_cols, n_repeat, x_indexer, y_indexer, scale_factor=2, norm=True, d_type="float64"):
        'Initialization'
        self.list_of_directories = dir_list
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
        # print(self.X[index, :].shape, self.y[index, :].shape)
        return self.X[index, :], self.y[index, :]
    
    def __call__(self):
        for i in range(self.X.shape[0]):
            yield self.__getitem__(i)
    
class GridNetworkSequentialDataGenerator_PT(torch.utils.data.Dataset):
    'Characterizes a dataset for PyTorch'
    def __init__(self, dir_list, handler_params, dtype, scale_factor=2*np.pi, norm=True):#, n_rows, n_cols, n_repeat, x_indexer, y_indexer, scale_factor=2, norm=True, d_type="float64"):
        'Initialization'
        self.list_of_directories = dir_list
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
    
if __name__=="__main__":
    ## ProxyTSPRD
    # get configuration file
    _REF_DIR = "./"
    _CONFIG_FILE = "./configs/config_lstm.json"
    config = file_reader.read_config(_REF_DIR + _CONFIG_FILE)
    
    data_params = config["data_params"]
    
    # training data
    data_params["training_data_dir"] = path_handler.get_absolute_path(_REF_DIR, data_params["training_data_dir"])
    print("[INFO] Training Data Directory:", data_params["training_data_dir"])

    # validation data - if any
    if "val_data_dir" in data_params:
        data_params["val_data_dir"] = path_handler.get_absolute_path(_REF_DIR, data_params["val_data_dir"])
        print("[INFO] Validation Data Directory:", data_params["val_data_dir"])

    dir_list = [data_params["training_data_dir"] + "/" + f + "/" for f in os.listdir(data_params["training_data_dir"])]
    n_files = len(dir_list)

    # subset files
    if data_params["n_scenarios"]:
        n_files = data_params["n_scenarios"]
        dir_list = dir_list[:n_files]

    import horovod.tensorflow.keras as hvd

    # Initialize Horovod
    hvd.init()

    # Pin GPU to be used to process local rank (one GPU per process)
    gpus = tf.config.experimental.list_physical_devices('GPU')
    for gpu in gpus:
        tf.config.experimental.set_memory_growth(gpu, True)
    if gpus:
        tf.config.experimental.set_visible_devices(gpus[hvd.local_rank()], 'GPU')

    # if self._MGPU_STRATEGY == "HVD":
    print("[INFO] Sharding data files for Horovod")
    splitter = n_files // hvd.size()
    print(n_files, splitter, splitter*hvd.rank(), splitter*(hvd.rank()+1))
    dir_list = dir_list[splitter*hvd.rank():splitter*(hvd.rank()+1)]
    n_files = len(dir_list)

    print("[INFO] Number of files (per GPU):", n_files)

#     data_handler = GridNetworkWindowDataGenerator(dir_list, config['data_params'], 'float64')
#     x_indexer = self.get_indexer(self.data_handler.n_rows,
#                                  self.data_handler.window_size,
#                                  self.data_handler.shift_size,
#                                  0,
#                                  self.data_handler.n_signals
#                                  )
#     y_indexer = self.get_indexer(self.data_handler.n_rows,
#                                  self.data_handler.window_size,
#                                  self.data_handler.shift_size,
#                                  1,
#                                  0
#                                  )

#     scenario_data = data_handler.get_training_data(x_indexer, y_indexer)

