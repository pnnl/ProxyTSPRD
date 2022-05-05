import os
import functools
import numpy as np
import tensorflow as tf

import torch
from .grid import TransientDataset

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
        self.n_scenarios = len(self.dir_list)
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
        return self.X[index, :], self.y[index, :]
    
## Deprecated    
class GridNetworkDataHandler():
    def __init__(self, handler_params, dtype):# scenario_dir, dtype, n_rows=1000, n_cols=136, repeat_cols=1):
        self.scenario_dir = handler_params["training_data_dir"]
        self.n_scenarios = handler_params["n_scenarios"]
        self.n_rows = handler_params["n_rows"]
        self.n_cols = handler_params["n_cols"]
        self.repeat_cols = handler_params["repeat_cols"]
        self.window_size = handler_params["window_size"]
        self.shift_size = handler_params["shift_size"]
        self.stride = handler_params["stride"]
        self.n_signals = handler_params["n_signals"]
        self.data_type = dtype

    def load_grid_data(self):
        # input directory
        print('[INFO]: Loading the datasets from the directory:', self.scenario_dir)
        dir_list = os.listdir(self.scenario_dir)[:self.n_scenarios]
        
        # Indicate the scenario range
        Dataset = dict()
        print('[INFO]: Loading data for %d scenarios ...' % len(dir_list))

        scenario_data = []
        count = 0
        for s_dir in dir_list:
            if s_dir.find('scenario') == -1: continue
            dataset = TransientDataset('%s/%s/' % (self.scenario_dir, s_dir))
            scenario_data.append(np.concatenate([dataset.F[:self.n_rows,:] for i in range(self.repeat_cols)] +  
                                            [dataset.Vm[:self.n_rows,:] for i in range(self.repeat_cols)], axis=1).astype(self.data_type))
            
            count += 1
        
        print('[INFO]: Loaded %d/%d scenarios ...' % (count, len(dir_list)))
        print('[INFO]: Total number of scenarios loaded:', len(scenario_data))
        print('[INFO]: Shape of each scenario loaded: ', scenario_data[0].shape)
        print('[INFO]: Done ...')

        return scenario_data

    def create_windows(self, scenario_data, stride=1, M=2, N=3, window_size=800, shift_size=10):
        '''
            M, N: number of time shifts
            window_size: Length of moving window
            shift_size: Separation between two moving windows
        '''
        X_data = [] # Original data
        Y_data = [] # 1 time-shifted data
        count  = 0

        for dataset in scenario_data:    
            dataset_size = dataset.shape[0]
            count += 1

            i = 0
            while (i*shift_size+window_size+M+N) <= dataset_size:
                X_indices = range(i*shift_size, i*shift_size + window_size,stride)        
                Y_indices = range(i*shift_size+1, i*shift_size + window_size+1,stride)               
                if count < 0:
                    print(X_indices)
                    print(Y_indices)
        
                i = i + 1
                X_data.append(dataset[X_indices])
                Y_data.append(dataset[Y_indices])
        
        print('Done processing %d/%d datasets ...' % (count, len(scenario_data)))
        print('[INFO]: Original dataset size:', dataset_size)
        print('[INFO]: Chosen dataset size:', window_size)
        print('[INFO]: Length of X_data: ', len(X_data))
        print('[INFO]: Length of each window after down sampling: ', X_data[0].shape)

        return X_data, Y_data

    def scale_data(self, X_data, Y_data, scale_factor=2*np.pi, norm=True):
        X_array = np.asarray(X_data).transpose(2,0,1).reshape(self.repeat_cols*self.n_cols,-1).transpose()
        Y_array = np.asarray(Y_data).transpose(2,0,1).reshape(self.repeat_cols*self.n_cols,-1).transpose()
        print('[INFO]: X_array shape: ', X_array.shape)
        print('[INFO]: Y_array shape: ', Y_array.shape)
        
        split_index = (self.repeat_cols * self.n_cols) // 2
        print(split_index)
        if norm:  
            # X_array      = np.concatenate((scale_factor*(X_array[:,:self.repeat_cols*int(self.n_cols/2)] - 60), 10*(X_array[:,self.repeat_cols*int(self.n_cols/2):] - 1)), axis = 1) 
            # Y_array      = np.concatenate((scale_factor*(Y_array[:,:self.repeat_cols*int(self.n_cols/2)] - 60), 10*(Y_array[:,self.repeat_cols*int(self.n_cols/2):] - 1)), axis = 1)
            X_array[:, :split_index] = scale_factor*(X_array[:, :split_index] - 60)
            X_array[:, split_index:] = 10*(X_array[:, split_index:] - 1)
            
            Y_array[:, :split_index] = scale_factor*(Y_array[:, :split_index] - 60)
            Y_array[:, split_index:] = 10*(Y_array[:, split_index:] - 1)
        
        return X_array, Y_array
    
    def create_inference_windows(self, scenario_data, stride=1, M=2, N=3, window_size=800, shift_size=10):
        '''
            M, N: number of time shifts
            window_size: Length of moving window
            shift_size: Separation between two moving windows
        '''
        Yp = [] # For analytical calculations
        Yf = [] # For analytical calculations
        count  = 0

        for dataset in scenario_data:    
            dataset_size = dataset.shape[0]
            Yp.append(dataset[:-1,:])
            Yf.append(dataset[1:,:])
            count += 1
            
        print('Done processing %d/%d datasets ...' % (count, len(scenario_data)))
        print('[INFO]: Original dataset size:', dataset_size)
        print('[INFO]: Chosen dataset size:', window_size)
        print('[INFO]: Length of X_data: ', len(Yp))
        print('[INFO]: Length of each window after down sampling: ', Yp[0].shape)

        return Yp, Yf
        
    # @tf.function#(experimental_compile=True)
    def scale_inference_data(self, Yp, Yf, scale_factor=2*np.pi, norm=True):
        Yp_array = np.asarray(Yp).transpose(2,0,1).reshape(self.repeat_cols*self.n_cols,-1).transpose()
        Yf_array = np.asarray(Yf).transpose(2,0,1).reshape(self.repeat_cols*self.n_cols,-1).transpose()
        print('[INFO]: Yp_array shape: ', Yp_array.shape)
        print('[INFO]: Yf_array shape: ', Yf_array.shape)

        if norm:  
            Yp_array_old = Yp_array
            Yf_array_old = Yf_array
            Yp_array     = np.concatenate((scale_factor*(Yp_array_old[:,:self.repeat_cols*int(self.n_cols/2)] - 60), 10*(Yp_array_old[:,self.repeat_cols*int(self.n_cols/2):] - 1)), axis = 1)
            Yf_array     = np.concatenate((scale_factor*(Yf_array_old[:,:self.repeat_cols*int(self.n_cols/2)] - 60), 10*(Yf_array_old[:,self.repeat_cols*int(self.n_cols/2):] - 1)), axis = 1)    

        return Yp_array, Yf_array


class GridNetworkTFDataHandler():
    def __init__(self, scenario_dir, dtype, n_rows=1000, n_cols=136, repeat_cols=1):
        self.scenario_dir = scenario_dir
        self.n_rows = n_rows 
        self.n_cols = n_cols
        self.repeat_cols = repeat_cols 
        self.dtype = dtype

    def get_data(self, t: tf.string):
        # fetch directory name
        s_dir = t.numpy().decode('utf-8')
        if s_dir.find('scenario') == -1:
            return None
        
        # get and concatenate data
        dataset = TransientDataset('%s/%s/' % (self.scenario_dir, s_dir))
        raw_data = np.concatenate([dataset.F for i in range(self.repeat_cols)] +  
                                  [dataset.Vm for i in range(self.repeat_cols)], axis=1)
        
        # return data
        return raw_data

    @tf.function#(experimental_compile=True) # (input_signature=(tf.TensorSpec(shape=(), dtype=tf.string),))
    def convert_to_tensor(self, i):
        d = tf.py_function(func=self.get_data, inp=[i], Tout=self.dtype)
        d.set_shape(tf.TensorShape([self.n_rows, self.repeat_cols * self.n_cols]))
        return d

    #@tf.function(experimental_compile=True)
    def load_grid_data(self):
        # load data and print list of files
        # print('[INFO]: Loading the datasets from the directory:', self.scenario_dir)
        self.dir_list = os.listdir(self.scenario_dir)

        # Indicate the scenario range
        Dataset = dict()
        # print('[INFO]: Loading data for %d scenarios ...' % len(self.dir_list))

        list_files = tf.data.Dataset.from_tensor_slices(self.dir_list)

        original_scenarios = list_files.map(self.convert_to_tensor, num_parallel_calls=tf.data.experimental.AUTOTUNE)
        trimmed_scenarios = original_scenarios.map(lambda scenario: tf.data.Dataset.from_tensor_slices(scenario).take(self.n_rows), num_parallel_calls=tf.data.experimental.AUTOTUNE)
        # print('[INFO]: Total number of scenarios loaded:', len(scenario_data))
        # print('[INFO]: Shape of each scenario original: ', original_shape)
        # print('[INFO]: Shape of each scenario loaded: ', scenario_data[0].shape)
        # print('[INFO]: Done ...')

        return trimmed_scenarios

    # @tf.function#(experimental_compile=True)
    def create_windows(self, trimmed_scenarios, stride=1, M=2, N=3, window_size=800, shift_size=10):
        Yp_data = trimmed_scenarios.map(lambda window: window.take(self.n_rows-1), num_parallel_calls=tf.data.experimental.AUTOTUNE)
        Yf_data = trimmed_scenarios.map(lambda window: window.skip(1), num_parallel_calls=tf.data.experimental.AUTOTUNE)
        window_X_data = trimmed_scenarios.map(lambda window: window.take(self.n_rows-N).window(window_size, shift=shift_size, stride=stride, drop_remainder=True), num_parallel_calls=tf.data.experimental.AUTOTUNE)
        window_Y_data = trimmed_scenarios.map(lambda window: window.skip(1).window(window_size, shift=shift_size, stride=stride, drop_remainder=True), num_parallel_calls=tf.data.experimental.AUTOTUNE)
        window_U_data = trimmed_scenarios.map(lambda window: window.skip(M).window(window_size, shift=shift_size, stride=stride, drop_remainder=True), num_parallel_calls=tf.data.experimental.AUTOTUNE)
        window_V_data = trimmed_scenarios.map(lambda window: window.skip(N).window(window_size, shift=shift_size, stride=stride, drop_remainder=True), num_parallel_calls=tf.data.experimental.AUTOTUNE)

#         for a in window_X_data.take(1): n_windows = a.cardinality().numpy()
#         self.n_datapoints = len(self.dir_list) * n_windows * window_size

        # print('[INFO]: Original dataset size:', dataset_size)
        # print('[INFO]: Chosen dataset size:', window_size)
        # print('[INFO]: Length of X_data: ', len(X_data))
        # print('[INFO]: Length of each window after down sampling: ', X_data[0].shape)

        return window_X_data, window_Y_data, window_U_data, window_V_data, Yp_data, Yf_data

    # @tf.function#(experimental_compile=True)
    def scale_data(self, window_X_data, window_Y_data, window_U_data, window_V_data, Yp_data, Yf_data, scale_factor=2*np.pi, norm=True):
        flat_Yp_data = Yp_data.flat_map(lambda time_step: time_step)
        flat_Yf_data = Yf_data.flat_map(lambda time_step: time_step)

        flat_X_data = window_X_data.flat_map(lambda window: window.flat_map(lambda time_step: time_step))
        flat_Y_data = window_Y_data.flat_map(lambda window: window.flat_map(lambda time_step: time_step))
        flat_U_data = window_U_data.flat_map(lambda window: window.flat_map(lambda time_step: time_step))
        flat_V_data = window_V_data.flat_map(lambda window: window.flat_map(lambda time_step: time_step))

        if norm:
            flat_Yp_data = flat_Yp_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:self.repeat_cols*int(self.n_cols/2)], 60), scale_factor), \
                                                                 tf.math.multiply(tf.math.subtract(x[self.repeat_cols*int(self.n_cols/2):], 1), 10)], axis=0), num_parallel_calls=tf.data.experimental.AUTOTUNE)
            flat_Yf_data = flat_Yf_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:self.repeat_cols*int(self.n_cols/2)], 60), scale_factor), \
                                                                 tf.math.multiply(tf.math.subtract(x[self.repeat_cols*int(self.n_cols/2):], 1), 10)], axis=0), num_parallel_calls=tf.data.experimental.AUTOTUNE)
            flat_X_data = flat_X_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:self.repeat_cols*int(self.n_cols/2)], 60), scale_factor), \
                                                               tf.math.multiply(tf.math.subtract(x[self.repeat_cols*int(self.n_cols/2):], 1), 10)], axis=0), num_parallel_calls=tf.data.experimental.AUTOTUNE)
            flat_Y_data = flat_Y_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:self.repeat_cols*int(self.n_cols/2)], 60), scale_factor), \
                                                               tf.math.multiply(tf.math.subtract(x[self.repeat_cols*int(self.n_cols/2):], 1), 10)], axis=0), num_parallel_calls=tf.data.experimental.AUTOTUNE)
            flat_U_data = flat_U_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:self.repeat_cols*int(self.n_cols/2)], 60), scale_factor), \
                                                               tf.math.multiply(tf.math.subtract(x[self.repeat_cols*int(self.n_cols/2):], 1), 10)], axis=0), num_parallel_calls=tf.data.experimental.AUTOTUNE)
            flat_V_data = flat_V_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:self.repeat_cols*int(self.n_cols/2)], 60), scale_factor), \
                                                               tf.math.multiply(tf.math.subtract(x[self.repeat_cols*int(self.n_cols/2):], 1), 10)], axis=0), num_parallel_calls=tf.data.experimental.AUTOTUNE)    
                
        return flat_X_data, flat_Y_data, flat_U_data, flat_V_data, flat_Yp_data, flat_Yf_data

class TrainingDataGenerator(tf.data.Dataset):
    def _generator(file_name, n_rows, n_cols, n_repeat, x_indexer, y_indexer, norm, scale_factor):
        # Opening the file
        dataset = TransientDataset(file_name.decode('utf-8'))
        raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), n_repeat, axis=1)[:n_rows, :]
        
        split_index = (n_cols * n_repeat) // 2
        flat_X_data = raw_data[x_indexer].reshape(-1, n_cols*n_repeat)
        flat_Y_data = raw_data[y_indexer].reshape(-1, n_cols*n_repeat)
        # print(flat_X_data.shape, flat_Y_data.shape)
        
        if norm:
            flat_X_data[:, :split_index] = scale_factor*(flat_X_data[:, :split_index] - 60)
            flat_X_data[:, split_index:] = 10*(flat_X_data[:, split_index:] - 1)
            
            flat_Y_data[:, :split_index] = scale_factor*(flat_Y_data[:, :split_index] - 60)
            flat_Y_data[:, split_index:] = 10*(flat_Y_data[:, split_index:] - 1)
            
        yield (flat_X_data, flat_Y_data)

    def __new__(cls, file_name, n_rows, flat_n_rows, n_cols, n_repeat, x_indexer, y_indexer, d_type, norm=True, scale_factor=2*np.pi):
        # print("Enter")
        return tf.data.Dataset.from_generator(
            cls._generator,
            output_signature = (tf.TensorSpec(shape=(flat_n_rows, n_cols*n_repeat), dtype=d_type),
                                tf.TensorSpec(shape=(flat_n_rows, n_cols*n_repeat), dtype=d_type)),
            args=(file_name, n_rows, n_cols, n_repeat, x_indexer, y_indexer, norm, scale_factor,)
        )

class GridNetworkNewGen():
    def __init__(self, handler_params):#scenario_dir, n_rows, n_cols, dtype, repeat_cols=1):
        self.scenario_dir = handler_params["training_data_dir"]
        self.n_scenarios = handler_params["n_scenarios"]
        self.n_rows = handler_params["n_rows"]
        self.n_cols = handler_params["n_cols"]
        self.repeat_cols = handler_params["repeat_cols"]
        self.window_size = handler_params["window_size"]
        self.shift_size = handler_params["shift_size"]
        self.stride = handler_params["stride"]
        self.n_signals = handler_params["n_signals"]
        self.data_type = dtype

    # @tf.function(experimental_compile=True)
    def get_training_data(self, x_indexer, y_indexer, deterministic=False):
        # load data and print list of files
        # print('[INFO]: Loading the datasets from the directory:', self.scenario_dir)
        self.dir_list = [self.scenario_dir + "/" + f + "/" for f in os.listdir(self.scenario_dir)[:self.n_scenarios]]
        
        list_files = tf.data.Dataset.from_tensor_slices(self.dir_list)
        trimmed_scenarios = list_files.interleave(lambda x: TrainingDataGenerator(x, self.n_rows, 
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

class SequentialGenerator(tf.keras.utils.Sequence):
    def __init__(self, fnames, n_rows, repeat_cols):
        self.fnames = fnames
        self.n_rows = n_rows
        self.on_epoch_end()
        self.repeat_cols = repeat_cols
        
    def __len__(self):
        return len(self.fnames)
    
    def __getitem__(self, idx):
        dataset = TransientDataset(self.fnames[idx])
        raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), self.repeat_cols, axis=1)
        
        return raw_data[:self.n_rows, :]
    
class GridNetworkSequentialGen():
    def __init__(self, scenario_dir, n_rows, n_cols, d_type, repeat_cols=1):
        self.scenario_dir = scenario_dir
        self.n_rows = n_rows 
        self.n_cols = n_cols
        self.repeat_cols = repeat_cols 
        self.d_type = d_type

    #@tf.function(experimental_compile=True)
    def load_grid_data(self):
        # load data and print list of files
        # print('[INFO]: Loading the datasets from the directory:', self.scenario_dir)
        self.dir_list = [self.scenario_dir + "/" + f + "/" for f in os.listdir(self.scenario_dir)]
        
        gen = SequentialGenerator(self.dir_list, self.n_rows, self.repeat_cols)
        dataset_gen = tf.data.Dataset.from_generator(
            lambda: gen,
            output_types=self.d_type,
            output_shapes=(self.n_rows, self.n_cols*self.repeat_cols)
        ).prefetch(tf.data.AUTOTUNE)
        
        trimmed_scenarios = tf.data.Dataset.range(1).interleave(
            lambda x: dataset_gen,
            num_parallel_calls=tf.data.AUTOTUNE).cache()
        
        return trimmed_scenarios
    
    def get_training_data(self, trimmed_scenarios, window_size, shift_size, stride, N, y_start):
        training_data = trimmed_scenarios.interleave(lambda x: TrainingDataGenerator(x, 
                                                                                     self.n_cols, 
                                                                                     self.repeat_cols, 
                                                                                     self.d_type,
                                                                                     self.n_rows-N, 
                                                                                     y_start, 
                                                                                     window_size, 
                                                                                     shift_size, 
                                                                                     stride), num_parallel_calls=tf.data.AUTOTUNE)
        return training_data
    
    

