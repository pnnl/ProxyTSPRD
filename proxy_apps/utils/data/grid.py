# ---------------------------------------------------------------
"""
------- Code description ---------
This helper functions python file consists of all the necessary classes and functions
Storing contents of the .mat file into a tensor according to PyTorch Geometric
https://pytorch-geometric.readthedocs.io/en/latest/notes/introduction.html
Date created: Feb 18, 2020
Date updated: Mar 5, 2020
Location: PNNL, Richland, WA, USA
---------------------------------------------------------------
-------- Tensor variable description -------
power system PMU data
data.x          --> 3-D tensor [num_bus, num_node_feats, num_time_steps]
sparse representation of the edges
data.edge_indx  --> 2-D tensor [2, num_edges]
dynamic edge properties such as current flows (magnitude and angle)
data.edge_attr  --> 3-D tensor [num_edges, num_edge_feats, num_time_steps]
graph level stability or any equivalent labeling
data.y_graph    --> 1-D tensor [1, num_time_steps]
node level labeling
data.y_node     --> 2-D tensor [num_bus, num_time_steps]
node level control inputs
data.u          --> 2-D tensor [num_bus, num_time_steps]
---------------------------------------------------------------
------- Variable description ---------
num_bus        -- number of buses in the network (or it can be interpreted as number of nodes in a graph)
num_node_feats -- number of features (states) associated with each node in the network
num_time_steps -- number of time steps the data is available
num_edges      -- number of edges in the (power) network
num_edge_feats -- number of features (states) associates with each edge in the network
"""
# ---------------------------------------------------------------

import scipy.io as sio
import os
import time
import numpy as np
import pandas as pd

import tensorflow as tf

class CyberPhysicalDataset:
    def __init__(self, root, gen_locations):
        """ This class file considers the mat file data pointed by the user and parses it into respective tensors"""
        # If the current code and data files are in the same directory
        current_file_path = os.path.dirname(os.path.abspath(__file__))
        # If the current code and data files are not in the same directory
        # current_file_path         = 'Repositories/GridSTAGE/code'

        mat_file_path = current_file_path + root + 'PMUData.mat'
        mat_file_contents = sio.loadmat(mat_file_path)
        PMU_locations = mat_file_contents['fmeas_con'][:, 1].astype(int)
        frequency_data = mat_file_contents['PMU']['f'][0][0][:, PMU_locations - 1].T
        voltage_data = mat_file_contents['PMU']['Vm'][0][0][:, PMU_locations - 1].T
        angle_data = mat_file_contents['PMU']['Va'][0][0][:, PMU_locations - 1].T
        num_time_steps, num_bus = mat_file_contents['PMU']['f'][0][0].shape

        scenario_description_file = current_file_path + root + 'ScenarioDescription.csv'

        agc_signals_file = current_file_path + root + 'ACEData.mat'
        agc_data = sio.loadmat(agc_signals_file)

        edge_attr_Im = None
        edge_attr_Ia = None
        edge_attr_Id = None

        for i in range(num_bus):
            if type(edge_attr_Im) == np.ndarray:
                edge_attr_Im = np.hstack((edge_attr_Im, mat_file_contents['PMU']['Im'][0][0][0][i]))
                edge_attr_Ia = np.hstack((edge_attr_Ia, mat_file_contents['PMU']['Ia'][0][0][0][i]))
                edge_attr_Id = np.hstack((edge_attr_Id, mat_file_contents['PMU']['Id'][0][0][0][i]))
            else:
                edge_attr_Im = mat_file_contents['PMU']['Im'][0][0][0][i]
                edge_attr_Ia = mat_file_contents['PMU']['Ia'][0][0][0][i]
                edge_attr_Id = mat_file_contents['PMU']['Id'][0][0][0][i]

        self.x = np.zeros([frequency_data.shape[1], frequency_data.shape[0], 3], dtype='float')
        num_buses = frequency_data.shape[0]
        num_time_steps = frequency_data.shape[1]
        for i in range(num_time_steps):
            for j in range(num_buses):
                self.x[i, j, 0] = frequency_data[j, i]
                self.x[i, j, 1] = voltage_data[j, i]
                self.x[i, j, 2] = angle_data[j, i]
        # print('X.shape')
        # print(self.x.shape)
        # self.x                    = np.transpose(np.array((frequency_data, voltage_data)), [1, 0, 2])

        self.scen_desc = pd.read_csv(scenario_description_file)

        self.edge_attr_Im = edge_attr_Im.T
        self.edge_attr_Ia = edge_attr_Ia.T
        self.edge_attr_Id = edge_attr_Id.T

        self.edge_attr = np.transpose(np.array((self.edge_attr_Im, self.edge_attr_Ia)), [1, 0, 2])
        self.u = np.zeros((num_bus, num_time_steps))
        self.u[gen_locations, :] = agc_data['tg_sig'][:, np.arange(0, 2 * num_time_steps, 2)]


# ---------------------------------------------------------------

class TransientDatasetwithControl:
    def __init__(self, root, gen_locations):
        """ This class file considers the mat file data pointed by the user and parses it into respective tensors"""
        # If the current code and data files are in the same directory
        current_file_path = os.path.dirname(os.path.abspath(__file__))
        # If the current code and data files are not in the same directory
        # current_file_path         = 'Repositories/GridSTAGE/code'

        mat_file_path = current_file_path + root + 'PMUData.mat'
        mat_file_contents = sio.loadmat(mat_file_path)
        pmu_locations = mat_file_contents['fmeas_con'][:, 1].astype(int)

        num_time_steps, num_bus = mat_file_contents['PMU']['f'][0][0].shape
        scenario_description = pd.read_csv(current_file_path + root + 'ScenarioDescription.csv')
        load_changes_start_times = scenario_description['Start time(s) for load changes'][0].split()
        time1 = int(load_changes_start_times[0])
        time2 = int(load_changes_start_times[1])

        frequency_data = [mat_file_contents['PMU']['f'][0][0][time1 * 50 + 25: time2 * 50 - 25, pmu_locations - 1],
                          mat_file_contents['PMU']['f'][0][0][time2 * 50 + 25: num_time_steps, pmu_locations - 1]]
        voltage_data = [mat_file_contents['PMU']['Vm'][0][0][time1 * 50 + 25: time2 * 50 - 25, pmu_locations - 1],
                        mat_file_contents['PMU']['Vm'][0][0][time2 * 50 + 25: num_time_steps, pmu_locations - 1]]
        angle_data = [mat_file_contents['PMU']['Va'][0][0][time1 * 50 + 25: time2 * 50 - 25, pmu_locations - 1],
                      mat_file_contents['PMU']['Va'][0][0][time2 * 50 + 25: num_time_steps, pmu_locations - 1]]

        self.F  = frequency_data
        self.Vm = voltage_data
        self.Va = angle_data
        agc_signals_file = current_file_path + root + 'ACEData.mat'
        agc_data = sio.loadmat(agc_signals_file)

        edge_attr_im = None
        edge_attr_ia = None
        edge_attr_id = None

        for i in range(num_bus):
            if type(edge_attr_im) == np.ndarray:
                edge_attr_im = np.hstack((edge_attr_im, mat_file_contents['PMU']['Im'][0][0][0][i]))
                edge_attr_ia = np.hstack((edge_attr_ia, mat_file_contents['PMU']['Ia'][0][0][0][i]))
                edge_attr_id = np.hstack((edge_attr_id, mat_file_contents['PMU']['Id'][0][0][0][i]))
            else:
                edge_attr_im = mat_file_contents['PMU']['Im'][0][0][0][i]
                edge_attr_ia = mat_file_contents['PMU']['Ia'][0][0][0][i]
                edge_attr_id = mat_file_contents['PMU']['Id'][0][0][0][i]

        self.scen_desc = scenario_description

        self.edge_attr_Im = edge_attr_im.T
        self.edge_attr_Ia = edge_attr_ia.T
        self.edge_attr_Id = edge_attr_id.T

        self.edge_attr = np.transpose(np.array((self.edge_attr_Im, self.edge_attr_Ia)), [1, 0, 2])
        self.u = np.zeros((num_bus, num_time_steps))
        self.u[gen_locations, :] = agc_data['tg_sig'][:, np.arange(0, 2 * num_time_steps, 2)]

# ---------------------------------------------------------------

class TransientDataset:
    def __init__(self, root):
        """ This class file considers the mat file data pointed by the user and parses it into respective tensors"""
        # If the current code and data files are in the same directory
        # current_file_path = os.path.dirname(os.path.abspath(__file__))
        # If the current code and data files are not in the same directory
        # current_file_path         = 'Repositories/GridSTAGE/code'

        mat_file_path =  root + '/PMUData.mat'
        mat_file_contents = sio.loadmat(mat_file_path)
        pmu_locations = mat_file_contents['fmeas_con'][:, 1].astype(int)

        num_time_steps, num_bus = mat_file_contents['PMU']['f'][0][0].shape
        scenario_description = pd.read_csv(root + '/ScenarioDescription.csv')
        load_changes_start_times = scenario_description['Start time(s) for load changes'][0]

#        frequency_data = mat_file_contents['PMU']['f'][0][0][load_changes_start_times * 50 + 25: num_time_steps, pmu_locations - 1]
#        voltage_data = mat_file_contents['PMU']['Vm'][0][0][load_changes_start_times * 50 + 25: num_time_steps, pmu_locations - 1]
#        angle_data = mat_file_contents['PMU']['Va'][0][0][load_changes_start_times * 50 + 25: num_time_steps, pmu_locations - 1]

        frequency_data = mat_file_contents['PMU']['f'][0][0][load_changes_start_times * 50 + 50: num_time_steps, pmu_locations - 1]
        voltage_data = mat_file_contents['PMU']['Vm'][0][0][load_changes_start_times * 50 + 50: num_time_steps, pmu_locations - 1]
        angle_data = mat_file_contents['PMU']['Va'][0][0][load_changes_start_times * 50 + 50: num_time_steps, pmu_locations - 1]

        self.F  = frequency_data
        self.Vm = voltage_data
        self.Va = angle_data

        edge_attr_im = None
        edge_attr_ia = None
        edge_attr_id = None

        for i in range(num_bus):
            if type(edge_attr_im) == np.ndarray:
                edge_attr_im = np.hstack((edge_attr_im, mat_file_contents['PMU']['Im'][0][0][0][i]))
                edge_attr_ia = np.hstack((edge_attr_ia, mat_file_contents['PMU']['Ia'][0][0][0][i]))
                edge_attr_id = np.hstack((edge_attr_id, mat_file_contents['PMU']['Id'][0][0][0][i]))
            else:
                edge_attr_im = mat_file_contents['PMU']['Im'][0][0][0][i]
                edge_attr_ia = mat_file_contents['PMU']['Ia'][0][0][0][i]
                edge_attr_id = mat_file_contents['PMU']['Id'][0][0][0][i]

        self.scen_desc = scenario_description

        self.edge_attr_Im = edge_attr_im.T
        self.edge_attr_Ia = edge_attr_ia.T
        self.edge_attr_Id = edge_attr_id.T

        self.edge_attr = np.transpose(np.array((self.edge_attr_Im, self.edge_attr_Ia)), [1, 0, 2])

# ---------------------------------------------------------------

class SystemData:
    def __init__(self, root):
        """ This class file considers the system data file data pointed by the user and parses it into respective variables"""
        """ System data files are independent of scenario information """
        # If the current code and data files are in the same directory
        current_file_path = os.path.dirname(os.path.abspath(__file__))
        # If the current code and data files are not in the same directory
        # current_file_path         = '/Repositories/GridSTAGE/code'

        bus_line_data_file = current_file_path + root + 'BusLineData_68bus.mat'
        bus68_data = sio.loadmat(bus_line_data_file)
        line_data = bus68_data['line']
        bus_data = bus68_data['bus']
        num_edges = line_data.shape[0]
        num_buses = bus_data.shape[0]

        gen_locations = np.nonzero(bus_data[:, 3])

        self.gen_locations = gen_locations[0]
        self.num_bus = num_buses
        self.num_edges = num_edges
        self.edge_indx = line_data[:, 0:2].T
# ---------------------------------------------------------------

class GridNetworkDataHandler():
    def __init__(self, scenario_dir, dtype, n_rows=1000, n_cols=136, repeat_cols=1, n_scenarios=50):
        self.scenario_dir = scenario_dir
        self.n_rows = n_rows 
        self.n_cols = n_cols
        self.repeat_cols = repeat_cols 
        self.n_scenarios = n_scenarios
        self.dtype = dtype

    def load_grid_data(self):
        # input directory
        print('[INFO]: Loading the datasets from the directory:', self.scenario_dir)
        dir_list = os.listdir(self.scenario_dir)

        # Indicate the scenario range
        Dataset = dict()
        print('[INFO]: Loading data for %d scenarios ...' % len(dir_list))

        scenario_data = []
        count = 0
        for s_dir in dir_list:
            if s_dir.find('scenario') == -1: continue
            dataset = TransientDataset('%s/%s/' % (self.scenario_dir, s_dir))
            scenario_data.append(np.concatenate([dataset.F[:self.n_rows,:] for i in range(self.repeat_cols)] +  
                                            [dataset.Vm[:self.n_rows,:] for i in range(self.repeat_cols)], axis=1).astype(self.dtype))
            
            count += 1
            if count == self.n_scenarios: print('[INFO]: Loaded %d/%d scenarios ...' % (count, len(dir_list)))

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
    	U_data = [] # 2 time-shifted data
    	V_data = [] # 3 time-shifted data
    	Yp = [] # For analytical calculations
    	Yf = [] # For analytical calculations
    	count  = 0
    	
    	for dataset in scenario_data:    
    	    dataset_size = dataset.shape[0]
    	    Yp.append(dataset[:-1,:])
    	    Yf.append(dataset[1:,:])
    	    count += 1
    	    if count == self.n_scenarios:
    	        print('Done processing %d/%d datasets ...' % (count, len(scenario_data)))
    	    
    	    i = 0
    	    while (i*shift_size+window_size+M+N) <= dataset_size:
    	        X_indices = range(i*shift_size, i*shift_size + window_size,stride)        
    	        Y_indices = range(i*shift_size+1, i*shift_size + window_size+1,stride)               
    	        U_indices = range(i*shift_size+M, i*shift_size + window_size+M,stride)               
    	        V_indices = range(i*shift_size+N, i*shift_size + window_size+N,stride)   
    	        if count < 0:
    	            print(X_indices)
    	            print(Y_indices)
    	            print(U_indices)
    	            print(V_indices)        

    	        i = i + 1
    	        X_data.append(dataset[X_indices])
    	        Y_data.append(dataset[Y_indices])
    	        U_data.append(dataset[U_indices])
    	        V_data.append(dataset[V_indices])

    	print('[INFO]: Original dataset size:', dataset_size)
    	print('[INFO]: Chosen dataset size:', window_size)
    	print('[INFO]: Length of X_data: ', len(X_data))
    	print('[INFO]: Length of each window after down sampling: ', X_data[0].shape)

    	return X_data, Y_data, U_data, V_data, Yp, Yf

    def scale_data(self, X_data, Y_data, U_data, V_data, Yp, Yf, scale_factor=2*np.pi, norm=True):
    	X_array = np.asarray(X_data).transpose(2,0,1).reshape(self.repeat_cols*self.n_cols,-1).transpose()
    	Y_array = np.asarray(Y_data).transpose(2,0,1).reshape(self.repeat_cols*self.n_cols,-1).transpose()
    	U_array = np.asarray(U_data).transpose(2,0,1).reshape(self.repeat_cols*self.n_cols,-1).transpose()
    	V_array = np.asarray(V_data).transpose(2,0,1).reshape(self.repeat_cols*self.n_cols,-1).transpose()
    	Yp_array = np.asarray(Yp).transpose(2,0,1).reshape(self.repeat_cols*self.n_cols,-1).transpose()
    	Yf_array = np.asarray(Yf).transpose(2,0,1).reshape(self.repeat_cols*self.n_cols,-1).transpose()
    	print('[INFO]: Yp_array shape: ', Yp_array.shape)
    	print('[INFO]: Yf_array shape: ', Yf_array.shape)
    	print('[INFO]: X_array shape: ', X_array.shape)
    	print('[INFO]: Y_array shape: ', Y_array.shape)
    	print('[INFO]: U_array shape: ', U_array.shape)
    	print('[INFO]: V_array shape: ', V_array.shape)

    	if norm:  
    	    X_array_old  = X_array
    	    Y_array_old  = Y_array
    	    U_array_old  = U_array
    	    V_array_old  = V_array
    	    Yp_array_old = Yp_array
    	    Yf_array_old = Yf_array
    	    X_array      = np.concatenate((scale_factor*(X_array_old[:,:self.repeat_cols*int(self.n_cols/2)] - 60), 10*(X_array_old[:,self.repeat_cols*int(self.n_cols/2):] - 1)), axis = 1) 
    	    Y_array      = np.concatenate((scale_factor*(Y_array_old[:,:self.repeat_cols*int(self.n_cols/2)] - 60), 10*(Y_array_old[:,self.repeat_cols*int(self.n_cols/2):] - 1)), axis = 1) 
    	    U_array      = np.concatenate((scale_factor*(U_array_old[:,:self.repeat_cols*int(self.n_cols/2)] - 60), 10*(U_array_old[:,self.repeat_cols*int(self.n_cols/2):] - 1)), axis = 1) 
    	    V_array      = np.concatenate((scale_factor*(V_array_old[:,:self.repeat_cols*int(self.n_cols/2)] - 60), 10*(V_array_old[:,self.repeat_cols*int(self.n_cols/2):] - 1)), axis = 1) 
    	    Yp_array     = np.concatenate((scale_factor*(Yp_array_old[:,:self.repeat_cols*int(self.n_cols/2)] - 60), 10*(Yp_array_old[:,self.repeat_cols*int(self.n_cols/2):] - 1)), axis = 1)
    	    Yf_array     = np.concatenate((scale_factor*(Yf_array_old[:,:self.repeat_cols*int(self.n_cols/2)] - 60), 10*(Yf_array_old[:,self.repeat_cols*int(self.n_cols/2):] - 1)), axis = 1)    
    	        
    	return X_array, Y_array, U_array, V_array, Yp_array, Yf_array

class GridNetworkTFDataHandler():
    def __init__(self, scenario_dir, dtype, n_rows=1000, n_cols=136, repeat_cols=1, n_scenarios=50):
        self.scenario_dir = scenario_dir
        self.n_rows = n_rows 
        self.n_cols = n_cols
        self.repeat_cols = repeat_cols 
        self.n_scenarios = n_scenarios
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
    
class ReadFileAsDataset(tf.data.Dataset):
    def _generator(file_name, n_rows, n_cols, n_repeat, indexer, norm, scale_factor):
        # Opening the file
        dataset = TransientDataset(file_name.decode('utf-8'))
        raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), n_repeat, axis=1)[:n_rows, :]
        split_index = (n_cols * n_repeat) // 2
        
        flat_data = raw_data[indexer].reshape(-1, n_cols)
        if norm:
            flat_data[:, :split_index] = scale_factor*(flat_data[:, :split_index] - 60)
            flat_data[:, split_index:] = 10*(flat_data[:, :split_index] - 1)
        
        yield flat_data

    def __new__(cls, file_name, n_rows, flat_n_rows, n_cols, n_repeat, indexer, d_type, norm=True, scale_factor=2*np.pi):
        return tf.data.Dataset.from_generator(
            cls._generator,
            output_signature = tf.TensorSpec(shape=(flat_n_rows, n_cols*n_repeat), dtype=d_type),
            args=(file_name, n_rows, n_cols, n_repeat, indexer, norm, scale_factor,)
        )
    
class TrainingDataGenerator(tf.data.Dataset):
    def _generator(samples, n_cols, n_repeat, x_end, y_start, window_size, shift, stride, norm, scale_factor, drop_remainder):
        X_data = tf.data.Dataset.from_tensor_slices(samples[:x_end, :]).window(window_size, shift=shift, stride=stride, drop_remainder=drop_remainder)
        Y_data = tf.data.Dataset.from_tensor_slices(samples[y_start:, :]).window(window_size, shift=shift, stride=stride, drop_remainder=drop_remainder)
        split_index = (n_cols * n_repeat) // 2
        for rows in tf.data.Dataset.zip((X_data, Y_data)):
            for x, y in tf.data.Dataset.zip(rows):
                if norm:
                    x_norm = np.concatenate([scale_factor*(x[:split_index] - 60), 10*(x[split_index:] - 1)]) 
                    y_norm = np.concatenate([scale_factor*(y[:split_index] - 60), 10*(y[split_index:] - 1)]) 
                    yield x_norm, y_norm
                else:
                    yield x, y

    def __new__(cls, samples, n_cols, n_repeat, d_type, x_end, y_start, window_size, shift, stride, norm=True, scale_factor=2*np.pi, drop_remainder=True):
        return tf.data.Dataset.from_generator(
            cls._generator,
            output_signature = (tf.TensorSpec(shape=(n_cols*n_repeat,), dtype=d_type),
                                tf.TensorSpec(shape=(n_cols*n_repeat,), dtype=d_type)),
            args=(samples, n_cols, n_repeat, x_end, y_start, window_size, shift, stride, norm, scale_factor, drop_remainder,)
        )
    
class GridNetworkNewGen():
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
        
        list_files = tf.data.Dataset.from_tensor_slices(self.dir_list)
        trimmed_scenarios = list_files.interleave(lambda x: ReadFileAsDataset(x, self.n_rows, 
                                                                              self.n_cols, 
                                                                              self.repeat_cols, 
                                                                              self.d_type).prefetch(tf.data.AUTOTUNE),
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





