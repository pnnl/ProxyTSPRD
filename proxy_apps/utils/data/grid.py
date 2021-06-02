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

        mat_file_path =  root + 'PMUData.mat'
        mat_file_contents = sio.loadmat(mat_file_path)
        pmu_locations = mat_file_contents['fmeas_con'][:, 1].astype(int)

        num_time_steps, num_bus = mat_file_contents['PMU']['f'][0][0].shape
        scenario_description = pd.read_csv(root + 'ScenarioDescription.csv')
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

def load_grid_data(scenario_dir)
	# input directory
	print('[INFO]: Loading the datasets from the directory:', scenario_dir)
	dir_list = os.listdir(scenario_dir)
	
	# Indicate the scenario range
	Dataset = dict()
	print('[INFO]: Loading data for %d scenarios ...' % len(dir_list))

	l_start = time.time()
	scenario_data = []
	count = 0
	for s_dir in dir_list:
	    if s_dir.find('scenario') == -1:
	        continue
	    dataset = TransientDataset('%s/%s/' % (scenario_dir, s_dir))
	    original_shape = np.concatenate((dataset.F, dataset.Vm), axis=1).shape
	    scenario_data.append(np.concatenate((dataset.F[:1000,:], dataset.Vm[:1000,:]), axis=1))
	    count += 1
	    if count % 50 == 0:
	        print('[INFO]: Loaded %d/%d scenarios ...' % (count, len(dir_list)))
	l_stop = time.time()
	print('[INFO]: Time taken for loading datasets:', l_stop - l_start, 'seconds')
	print('[INFO]: Total number of scenarios loaded:', len(scenario_data))
	print('[INFO]: Shape of each scenario original: ', original_shape)
	print('[INFO]: Shape of each scenario loaded: ', scenario_data[0].shape)
	print('[INFO]: Done ...')

	return scenario_data, l_stop-l_start

def create_windows(scenario_data, ds=1, M=2, N=3, window_size=800, shift_size=10):
	'''
		M, N: number of time shifts
		window_size: Length of moving window
		shift_size: Separation between two moving windows
	'''
	i_start = time.time()
	X_data = [] # Original data
	Y_data = [] # 1 time-shifted data
	U_data = [] # 2 time-shifted data
	V_data = [] # 3 time-shifted data
	whole_data = [] # Complete data 
	Yp = [] # For analytical calculations
	Yf = [] # For analytical calculations
	count  = 0
	
	for dataset in scenario_data:    
	    dataset_size = dataset.shape[0]
	    whole_data.append(dataset)      
	    Yp.append(dataset[:-1,:])
	    Yf.append(dataset[1:,:])
	    count += 1
	    if count % 50 == 0:
	        print('Done processing %d/%d datasets ...' % (count, len(scenario_data)))
	    
	    i = 0
	    while (i*shift_size+window_size+M+N) <= dataset_size:
	        X_indices = range(i*shift_size, i*shift_size + window_size,ds)        
	        Y_indices = range(i*shift_size+1, i*shift_size + window_size+1,ds)               
	        U_indices = range(i*shift_size+M, i*shift_size + window_size+M,ds)               
	        V_indices = range(i*shift_size+N, i*shift_size + window_size+N,ds)   
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

	i_stop = time.time()
	print('[INFO]: Time taken for creating X datasets:', i_stop - i_start, 'seconds')
	print('[INFO]: Original dataset size:', dataset_size)
	print('[INFO]: Chosen dataset size:', window_size)
	print('[INFO]: Length of X_data: ', len(X_data))
	print('[INFO]: Length of each window after down sampling: ', X_data[0].shape)

	return X_data, Y_data, U_data, V_data, whole_data, Yp, Yf, i_stop - i_start

def scale_data(X_data, Y_data, U_data, V_data, whole_data, Yp, Yf, data_len, scale_factor = 2*np.pi , norm=True):
	n_start = time.time()

	X_array = np.asarray(X_data).transpose(2,0,1).reshape(data_len,-1).transpose()
	Y_array = np.asarray(Y_data).transpose(2,0,1).reshape(data_len,-1).transpose()
	U_array = np.asarray(U_data).transpose(2,0,1).reshape(data_len,-1).transpose()
	V_array = np.asarray(V_data).transpose(2,0,1).reshape(data_len,-1).transpose()
	whole_data_array = np.asarray(whole_data).transpose(2,0,1).reshape(data_len,-1).transpose()
	Yp_array = np.asarray(Yp).transpose(2,0,1).reshape(data_len,-1).transpose()
	Yf_array = np.asarray(Yf).transpose(2,0,1).reshape(data_len,-1).transpose()
	print("[INFO]: whole_data_array shape:", whole_data_array.shape)
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
	    X_array      = np.concatenate((scale_factor*(X_array_old[:,:68] - 60), 10*(X_array_old[:,68:] - 1)), axis = 1) 
	    Y_array      = np.concatenate((scale_factor*(Y_array_old[:,:68] - 60), 10*(Y_array_old[:,68:] - 1)), axis = 1) 
	    U_array      = np.concatenate((scale_factor*(U_array_old[:,:68] - 60), 10*(U_array_old[:,68:] - 1)), axis = 1) 
	    V_array      = np.concatenate((scale_factor*(V_array_old[:,:68] - 60), 10*(V_array_old[:,68:] - 1)), axis = 1) 
	    Yp_array     = np.concatenate((scale_factor*(Yp_array_old[:,:68] - 60), 10*(Yp_array_old[:,68:] - 1)), axis = 1)
	    Yf_array     = np.concatenate((scale_factor*(Yf_array_old[:,:68] - 60), 10*(Yf_array_old[:,68:] - 1)), axis = 1)    
	        
	n_stop = time.time()
	print('[INFO]: Time taken for normalization:', n_stop - n_start, 'seconds')

	return X_array, Y_array, U_array, V_array, Yp_array, Yf_array, n_stop-n_start
