# Standard Libraries
import os
import json
import numpy as np
import tensorflow as tf

import time
from timeit import default_timer as timer

tf.keras.backend.clear_session()
tf.keras.backend.set_floatx('float64')
print("[INFO] Tensorflow version: ", tf.__version__)
print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.

# Custom Library
import sys
sys.path.append('../../')

from proxy_apps.data_handler import grid_network
from proxy_apps.apps.timeseries_prediction import deepDMD
from proxy_apps.plot_lib.simple_plots import eigen_plot, validation_plot, heatmap_matplotlib

N_EPOCHS = int(sys.argv[1])

timing_dict = dict()

tic = time.time()

scenario_dir = '../../../../data/TrainingDataIEEE68bus'
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
    dataset = grid_network.TransientDataset('%s/%s/' % (scenario_dir, s_dir))
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

timing_dict['load_data'] = (l_stop - l_start)/60

i_start = time.time()
X_data = [] # Original data
Y_data = [] # 1 time-shifted data
U_data = [] # 2 time-shifted data
V_data = [] # 3 time-shifted data
whole_data = [] # Complete data 
Yp = [] # For analytical calculations
Yf = [] # For analytical calculations
count  = 0
ds  = 1
M = 2 # signifies number of time-shifts
N = 3 # signifies number of time-shifts

for dataset in scenario_data:    
    dataset_size = dataset.shape[0]
    whole_data.append(dataset)      
    Yp.append(dataset[:-1,:])
    Yf.append(dataset[1:,:])
    count += 1
    if count % 50 == 0:
        print('Done processing %d/%d datasets ...' % (count, len(scenario_data)))
    window_size = 800 # length of moving window
    shift_size  = 10 # separation between two moving windows
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

timing_dict['create_data'] = (i_stop - i_start)/60

n_start = time.time()
Normalization = 1
scale_factor = 2*np.pi 

X_array = np.asarray(X_data).transpose(2,0,1).reshape(dataset.shape[1],-1).transpose()
Y_array = np.asarray(Y_data).transpose(2,0,1).reshape(dataset.shape[1],-1).transpose()
U_array = np.asarray(U_data).transpose(2,0,1).reshape(dataset.shape[1],-1).transpose()
V_array = np.asarray(V_data).transpose(2,0,1).reshape(dataset.shape[1],-1).transpose()
whole_data_array = np.asarray(whole_data).transpose(2,0,1).reshape(dataset.shape[1],-1).transpose()
Yp_array = np.asarray(Yp).transpose(2,0,1).reshape(dataset.shape[1],-1).transpose()
Yf_array = np.asarray(Yf).transpose(2,0,1).reshape(dataset.shape[1],-1).transpose()
print("[INFO]: whole_data_array shape:", whole_data_array.shape)
print('[INFO]: Yp_array shape: ', Yp_array.shape)
print('[INFO]: Yf_array shape: ', Yf_array.shape)
print('[INFO]: X_array shape: ', X_array.shape)
print('[INFO]: Y_array shape: ', Y_array.shape)
print('[INFO]: U_array shape: ', U_array.shape)
print('[INFO]: V_array shape: ', V_array.shape)

if Normalization:  
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

timing_dict['data_normalization'] = (n_stop - n_start)/60

# Hyperparameters
hyper_param_dict = dict()
hyper_param_dict['original_dim']       = 136   # input data dimension
hyper_param_dict['hl_1_dim']           = 128   # Hidden layer dimension
hyper_param_dict['hl_2_dim']           = 128   # Hidden layer dimension
hyper_param_dict['hl_3_dim']           = 64   # Hidden layer dimension
hyper_param_dict['hl_4_dim']           = 64   # Hidden layer dimension
# hyper_param_dict['hl_5_dim']           = 64   # Hidden layer dimension
hyper_param_dict['latent_dim']         = 64 # Latent space dimension 
hyper_param_dict['reg_factor']         = 0 # regularization weight for Koopman
hyper_param_dict['dropout_prob']       = 0.005  # dropout rate [regularization between hidden layers]
hyper_param_dict['weight_regularizer'] = 0.001  # [L1] regularization weight for dense layer weights 
hyper_param_dict['bias_regularizer']   = 0    # [L1] regularization bias for dense layer biases
hyper_param_dict['num_epochs']         = N_EPOCHS  # Number of epochs 
hyper_param_dict['learning_rate']      = 5e-4 # learning rate for optimizer 
hyper_param_dict['validation_split']   = 0.25
hyper_param_dict['batch_size']         = 32

class TimingCallback(tf.keras.callbacks.Callback):
    def __init__(self, logs={}):
        self.logs=[]
    def on_epoch_begin(self, epoch, logs={}):
        self.starttime = timer()
    def on_epoch_end(self, epoch, logs={}):
        self.logs.append(timer()-self.starttime)

cb = TimingCallback()

# Initialize Hyperparameters - we can keep it as a dict instead of creating a separate class
m_start = time.time()
hp = deepDMD.HyperParameters(hyper_param_dict)

# Stopping criteria if the training loss doesn't go down by 1e-3
CallBack = tf.keras.callbacks.EarlyStopping(
    monitor='val_loss', min_delta = 1e-3, verbose = 1, mode='min', patience = 3, 
    baseline=None, restore_best_weights=True)
K_model = deepDMD.NeuralNetworkModel(hp)
K_model.compile(optimizer=tf.optimizers.Adagrad(hp.lr))
history = K_model.fit([X_array, Y_array], validation_split = hp.vs, batch_size = hp.bs, 
                   epochs=hp.ep, callbacks=[CallBack, cb], shuffle = True)
m_stop = time.time()
print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
print('[INFO]: Time taken for model training (Keras):', sum(cb.logs), 'seconds')

timing_dict['model_training_time_module'] = (m_stop - m_start)/60
timing_dict['model_training_time_keras'] = sum(cb.logs)/60

with open('../../../../data/timing.json', 'w') as fp:
    json.dump(timing_dict, fp)