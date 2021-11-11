import numpy as np
import pandas as pd
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
    
if __name__=="__main__":
    ## ProxyTSPRD
    # get configuration file
    _CONFIG_FILE = "./configs/config_lstm.json"
    config = file_reader.read_config(_REF_DIR + _CONFIG_FILE)
    
    # training data
    data_params["training_data_dir"] = path_handler.get_absolute_path(ref_dir, data_params["training_data_dir"])
    print("[INFO] Training Data Directory:", data_params["training_data_dir"])

    # validation data - if any
    if "val_data_dir" in data_params:
        data_params["val_data_dir"] = path_handler.get_absolute_path(ref_dir, data_params["val_data_dir"])
        print("[INFO] Validation Data Directory:", data_params["val_data_dir"])

    dir_list = [data_params["training_data_dir"] + "/" + f + "/" for f in os.listdir(data_params["training_data_dir"])]
    n_files = len(dir_list)

    # subset files
    if data_params["n_scenarios"]:
        n_files = data_params["n_scenarios"]
        dir_list = dir_list[:n_files]

    if self._MGPU_STRATEGY == "HVD":
        print("[INFO] Sharding data files for Horovod")
        splitter = n_files // hvd.size()
        print(n_files, splitter, splitter*hvd.rank(), splitter*(hvd.rank()+1))
        dir_list = dir_list[splitter*hvd.rank():splitter*(hvd.rank()+1)]
        n_files = len(dir_list)

    print("[INFO] Number of files (per GPU):", n_files)

    data_handler = GridNetworkWindowDataGenerator(dir_list, config['data_params'], 'float64')
