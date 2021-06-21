# Standard Libraries
import os
import json
import datetime
import contextlib
import numpy as np
import tensorflow as tf

import time
from timeit import default_timer as timer

tf.keras.backend.clear_session()
print("[INFO] Tensorflow version: ", tf.__version__)
# print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.

# Custom Library
import sys
sys.path.append('../../')
print(sys.path)

from proxy_apps.data_handler import grid_network
from proxy_apps.apps.timeseries_prediction import deepDMDwithTF
from proxy_apps.plot_lib.simple_plots import eigen_plot, validation_plot, heatmap_matplotlib
from proxy_apps.utils import file_reader, path_handler

policy = tf.keras.mixed_precision.Policy('mixed_float16')
tf.keras.mixed_precision.set_global_policy(policy)

# Timing callback to measure the timings
class TimingCallback(tf.keras.callbacks.Callback):
    def __init__(self, logs={}):
        self.logs=[]
    def on_epoch_begin(self, epoch, logs={}):
        self.starttime = timer()
    def on_epoch_end(self, epoch, logs={}):
        self.logs.append(timer()-self.starttime)

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
        
class DatasetGeneratorV2(tf.data.Dataset):
    def _generator(X, Y, scale_factor, norm):
        if X.shape[0] == Y.shape[0]: 
            # number of rows in the data
            d_shape = X.shape[0]
            
            # creating window data
            for i in range(d_shape):
                if norm:
                    x_norm = np.concatenate((scale_factor*(X[i,:68] - 60), 10*(X[i,68:] - 1))) 
                    y_norm = np.concatenate((scale_factor*(Y[i,:68] - 60), 10*(Y[i,68:] - 1))) 
                    yield x_norm, y_norm
                else:
                    yield X[i], Y[i]
            
    def __new__(self, X, Y, scale_factor, norm=True):
        return tf.data.Dataset.from_generator(
            self._generator,
            output_types = (tf.float32, tf.float32),
            output_shapes = ((136,), (136,)),
            args=(X, Y, scale_factor, norm,)
        )

os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"
print(os.environ)

_N_EPOCHS = int(sys.argv[1])
_VERSION = sys.argv[2]
_LABEL = '_TFDataGen_MP'
_SUFFIX = 'e' + str(_N_EPOCHS) + _LABEL + "_" + datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
keepN = 1000

DATA_SHIFT  = 1
M = 2 # signifies number of time-shifts
N = 3 # signifies number of time-shifts
WINDOW_SIZE = 800 # length of moving window
SHIFT_SIZE  = 10 # separation between two moving windows
NORM = True
SCALE_FACTOR = 2*np.pi 

config = file_reader.read_config()

performance_dict = dict()

tic = time.time()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# load data and print list of files
scenario_dir = path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"])
print('[INFO]: Loading the datasets from the directory:', scenario_dir)
dir_list = os.listdir(scenario_dir)

# Indicate the scenario range
Dataset = dict()
print('[INFO]: Loading data for %d scenarios ...' % len(dir_list))

# output directory
output_dir = path_handler.get_absolute_path(curr_dir, config["info"]["output_dir"] + '/' + _VERSION + '/')
if not os.path.exists(output_dir): os.makedirs(output_dir)

# ------------------------------- LOAD DATA ------------------------------------------------
l_start = time.time()
scenario_data = []
count = 0
for s_dir in dir_list:
    if s_dir.find('scenario') == -1:
        continue
    dataset = grid_network.TransientDataset('%s/%s/' % (scenario_dir, s_dir))
    original_shape = np.concatenate((dataset.F, dataset.Vm), axis=1).shape
    scenario_data.append(np.concatenate((dataset.F[:keepN,:], dataset.Vm[:keepN,:]), axis=1))
    count += 1
    if count % 50 == 0:
        print('[INFO]: Loaded %d/%d scenarios ...' % (count, len(dir_list)))
l_stop = time.time()
print('[INFO]: Time taken for loading datasets:', l_stop - l_start, 'seconds')
print('[INFO]: Total number of scenarios loaded:', len(scenario_data))
print('[INFO]: Shape of each scenario original: ', original_shape)
print('[INFO]: Shape of each scenario loaded: ', scenario_data[0].shape)
print('[INFO]: Done ...')

performance_dict['data_loading_time'] = (l_stop - l_start)

# ------------------------------- CREATE DATA WINDOWS ------------------------------------------------
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
    while (i*SHIFT_SIZE+WINDOW_SIZE+M+N) <= dataset_size:
        X_indices = range(i*SHIFT_SIZE, i*SHIFT_SIZE + WINDOW_SIZE,DATA_SHIFT)        
        Y_indices = range(i*SHIFT_SIZE+1, i*SHIFT_SIZE + WINDOW_SIZE+1,DATA_SHIFT)               
        U_indices = range(i*SHIFT_SIZE+M, i*SHIFT_SIZE + WINDOW_SIZE+M,DATA_SHIFT)               
        V_indices = range(i*SHIFT_SIZE+N, i*SHIFT_SIZE + WINDOW_SIZE+N,DATA_SHIFT)   
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
print('[INFO]: Chosen dataset size:', WINDOW_SIZE)
print('[INFO]: Length of X_data: ', len(X_data))
print('[INFO]: Length of each window after down sampling: ', X_data[0].shape)

performance_dict['data_processing_time'] = (i_stop - i_start)


# ------------------------------- DATA PREPROCESSING ------------------------------------------------

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


# Hyperparameters
hyper_param_dict = dict()
hyper_param_dict['original_dim']       = 136   # input data dimension
hyper_param_dict['hl_1_dim']           = 128   # Hidden layer dimension
hyper_param_dict['hl_2_dim']           = 128   # Hidden layer dimension
hyper_param_dict['hl_3_dim']           = 64   # Hidden layer dimension
hyper_param_dict['hl_4_dim']           = 64   # Hidden layer dimension
# hyper_param_dict['hl_5_dim']           = 64   # Hidden layer dimension
hyper_param_dict['latent_dim']         = 64 # Latent space dimension 
hyper_param_dict['reg_factor']         = 0.01 # regularization weight for Koopman
hyper_param_dict['dropout_prob']       = 0.005  # dropout rate [regularization between hidden layers]
hyper_param_dict['weight_regularizer'] = 0.001  # [L1] regularization weight for dense layer weights 
hyper_param_dict['bias_regularizer']   = 0    # [L1] regularization bias for dense layer biases
hyper_param_dict['num_epochs']         = _N_EPOCHS  # Number of epochs 
hyper_param_dict['learning_rate']      = 5e-4 # learning rate for optimizer 
hyper_param_dict['validation_split']   = 0.25
hyper_param_dict['batch_size']         = 8192

# Initialize Hyperparameters - we can keep it as a dict instead of creating a separate class
hp = deepDMDwithTF.HyperParameters(hyper_param_dict)

n_start = time.time()
data_generator = DatasetGeneratorV2(X_array, Y_array, scale_factor=SCALE_FACTOR, norm=NORM)
data_generator = data_generator.batch(hp.bs).cache().prefetch(tf.data.AUTOTUNE)

n_stop = time.time()
print('[INFO]: Time taken for normalization and creating a data generator:', n_stop - n_start, 'seconds')

performance_dict['data_normalization_time'] = (n_stop - n_start)
    
timing_cb = TimingCallback()

# Stopping criteria if the training loss doesn't go down by 1e-3
early_stop_cb = tf.keras.callbacks.EarlyStopping(
    monitor='loss', min_delta=1e-3, verbose=1, mode='min', patience=3, 
    baseline=None, restore_best_weights=True)

# Create a TensorBoard Profiler
logs = path_handler.get_absolute_path(curr_dir, "../../../../logs/fit_" + _VERSION + "/" + _SUFFIX)
tb_callback = tf.keras.callbacks.TensorBoard(log_dir=logs, histogram_freq=1, embeddings_freq=1, profile_batch='5,15')

# Split the data
n_batches = X_array.shape[0] // hp.bs
n_batches_training = int(0.75 * X_array.shape[0])

training_dataset = data_generator.take(n_batches_training)
val_dataset = data_generator.skip(n_batches_training)

performance_dict["n_epochs"] = hp.ep
performance_dict["batch_size"] = hp.bs
performance_dict["n_training_batches"] = n_batches_training
performance_dict["n_val_batches"] = n_batches - n_batches_training

# Initialize, build, and fit the model
m_start = time.time()
K_model = deepDMDwithTF.NeuralNetworkModel(hp)
K_model.compile(optimizer=tf.optimizers.Adagrad(hp.lr))
history = K_model.fit(training_dataset, 
                      epochs=hp.ep, callbacks=[early_stop_cb, timing_cb, tb_callback], shuffle=True, 
                      workers=4, use_multiprocessing=True)
m_stop = time.time()

# print info
print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')

performance_dict['training_time_module'] = (m_stop - m_start)
performance_dict['training_time_epoch_wise'] = timing_cb.logs
performance_dict['training_loss'] = history.history['loss']
# performance_dict['validation_loss'] = history.history['val_loss']

test_generator = DatasetGeneratorV2(Yp_array, Yf_array, scale_factor=SCALE_FACTOR, norm=NORM)
test_generator = test_generator.batch(29970, drop_remainder=True).cache().prefetch(tf.data.AUTOTUNE)

inf_time_start = time.time()

Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss = K_model.predict(test_generator)

inf_time_stop = time.time()
performance_dict["inference_size"] = 29970
performance_dict["inference_time"] = inf_time_stop - inf_time_start
performance_dict["test_Kloss_model"] = Kloss

print("Koopman loss: %.4f" %Kloss)

print('Psi_X shape:', Psi_X.shape)
print('Psi_Y shape:', Psi_Y.shape)
print('PSI_X shape:', PSI_X.shape)
print('PSI_X shape:', PSI_Y.shape)

K_deepDMD = K_model.KO.numpy()

print('[INFO]: Shape of Koopman operator', K_deepDMD.shape)
print('[INFO]: Norm of Koopman operator', np.linalg.norm(K_deepDMD))
print('[INFO]: Trace of K_deepDMD:',np.trace(K_deepDMD))
print('[INFO]: One time-step error with K_deepDMD:', np.linalg.norm(PSI_Y - np.matmul(PSI_X, K_deepDMD), ord = 'fro'))

[eigenvaluesK, eigenvectorsK] = np.linalg.eig(K_deepDMD)

performance_dict["test_Kloss_calc"] = np.linalg.norm(PSI_Y - np.matmul(PSI_X, K_deepDMD), ord = 'fro')
performance_dict["eigen_real"] = list(eigenvaluesK.real)
performance_dict["eigen_imag"] = list(eigenvaluesK.imag)

with open(path_handler.get_absolute_path(output_dir, "performance_" + _SUFFIX + ".json"), 'w') as fp:
    json.dump(performance_dict, fp, cls=NpEncoder)
