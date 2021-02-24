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
from proxy_apps.apps.timeseries_prediction import deepDMDwithTF
from proxy_apps.plot_lib.simple_plots import eigen_plot, validation_plot, heatmap_matplotlib
from proxy_apps.utils import file_reader, path_handler

def get_data(t: tf.string):
    # fetch directory name
    s_dir = t.numpy().decode('utf-8')
    if s_dir.find('scenario') == -1:
        return None
    
    # get and concatenate data
    dataset = grid_network.TransientDataset('%s/%s/' % (scenario_dir, s_dir))
    raw_data = np.concatenate((dataset.F, dataset.Vm), axis=1)
    
    # return data
    return raw_data

def convert_to_tensor(i):
    d = tf.py_function(func=get_data, inp=[i], Tout=tf.float64)
    d.set_shape(tf.TensorShape([1400, 136]))
    return d

_N_EPOCHS = int(sys.argv[1])
_SUFFIX = 'n' + str(_N_EPOCHS) + '_' + sys.argv[2]
keepN = 1000

config = file_reader.read_config()

timing_dict = dict()

tic = time.time()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# load data and print list of files
output_dir = path_handler.get_absolute_path(curr_dir, config["info"]["output_dir"])
scenario_dir = path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"])
print('[INFO]: Loading the datasets from the directory:', scenario_dir)
dir_list = os.listdir(scenario_dir)

# Indicate the scenario range
Dataset = dict()
print('[INFO]: Loading data for %d scenarios ...' % len(dir_list))

l_start = time.time()
list_files = tf.data.Dataset.from_tensor_slices(dir_list)

original_scenarios = list_files.map(convert_to_tensor)
trimmed_scenarios = original_scenarios.map(lambda scenario: tf.data.Dataset.from_tensor_slices(scenario).take(keepN))
l_stop = time.time()
print('[INFO]: Time taken for loading datasets:', l_stop - l_start, 'seconds')
# print('[INFO]: Total number of scenarios loaded:', len(scenario_data))
# print('[INFO]: Shape of each scenario original: ', original_shape)
# print('[INFO]: Shape of each scenario loaded: ', scenario_data[0].shape)
print('[INFO]: Done ...')

timing_dict['load_data'] = (l_stop - l_start)/60

i_start = time.time()
window_size = 800
shift = 10
stride  = 1 # stride
M = 2 # signifies number of time-shifts
N = 3 # signifies number of time-shifts

Yp_data = trimmed_scenarios.map(lambda window: window.take(keepN-1))
Yf_data = trimmed_scenarios.map(lambda window: window.skip(1))
window_X_data = trimmed_scenarios.map(lambda window: window.take(keepN-N).window(window_size, shift=shift, stride=stride, drop_remainder=True))
window_Y_data = trimmed_scenarios.map(lambda window: window.skip(1).window(window_size, shift=shift, stride=stride, drop_remainder=True))
window_U_data = trimmed_scenarios.map(lambda window: window.skip(M).window(window_size, shift=shift, stride=stride, drop_remainder=True))
window_V_data = trimmed_scenarios.map(lambda window: window.skip(N).window(window_size, shift=shift, stride=stride, drop_remainder=True))

for a in window_X_data.take(1): n_windows = a.cardinality().numpy()
n_datapoints = len(dir_list) * n_windows * window_size

i_stop = time.time()
print('[INFO]: Time taken for creating X datasets:', i_stop - i_start, 'seconds')
# print('[INFO]: Original dataset size:', dataset_size)
print('[INFO]: Chosen dataset size:', window_size)
# print('[INFO]: Length of X_data: ', len(X_data))
# print('[INFO]: Length of each window after down sampling: ', X_data[0].shape)

timing_dict['create_data'] = (i_stop - i_start)/60

n_start = time.time()
scale_factor = 2 * np.pi 
normalization = 1

flat_Yp_data = Yp_data.flat_map(lambda time_step: time_step)
flat_Yf_data = Yf_data.flat_map(lambda time_step: time_step)

flat_X_data = window_X_data.flat_map(lambda window: window.flat_map(lambda time_step: time_step))
flat_X_data = window_X_data.flat_map(lambda window: window.flat_map(lambda time_step: time_step))
flat_Y_data = window_Y_data.flat_map(lambda window: window.flat_map(lambda time_step: time_step))
flat_U_data = window_U_data.flat_map(lambda window: window.flat_map(lambda time_step: time_step))
flat_V_data = window_V_data.flat_map(lambda window: window.flat_map(lambda time_step: time_step))
if normalization:
    flat_Yp_data = flat_Yp_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                         tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0))
    flat_Yf_data = flat_Yf_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                         tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0))
    flat_X_data = flat_X_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                       tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0))
    flat_Y_data = flat_Y_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                       tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0))
    flat_U_data = flat_U_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                       tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0))
    flat_V_data = flat_V_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                       tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0))    
        
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
hyper_param_dict['num_epochs']         = _N_EPOCHS  # Number of epochs 
hyper_param_dict['learning_rate']      = 5e-4 # learning rate for optimizer 
hyper_param_dict['validation_split']   = 0.25
hyper_param_dict['batch_size']         = 32

# Timing callback to measure the timings
class TimingCallback(tf.keras.callbacks.Callback):
    def __init__(self, logs={}):
        self.logs=[]
    def on_epoch_begin(self, epoch, logs={}):
        self.starttime = timer()
    def on_epoch_end(self, epoch, logs={}):
        self.logs.append(timer()-self.starttime)

timing_cb = TimingCallback()

# Stopping criteria if the training loss doesn't go down by 1e-3
early_stop_cb = tf.keras.callbacks.EarlyStopping(
    monitor='val_loss', min_delta = 1e-3, verbose = 1, mode='min', patience = 3, 
    baseline=None, restore_best_weights=True)

# Create a TensorBoard Profiler
# logs = path_handler.init_directory(config["info"]["output_dir"], "logs_" + _SUFFIX)
# tb_callback = tf.keras.callbacks.TensorBoard(log_dir=logs, histogram_freq=1)

# Initialize Hyperparameters - we can keep it as a dict instead of creating a separate class
m_start = time.time()
hp = deepDMDwithTF.HyperParameters(hyper_param_dict)

# Split the data
n_batches = n_datapoints // hp.bs
n_batches_training = int((1-hp.vs) * n_batches)

zip_data = tf.data.Dataset.zip((flat_X_data, flat_Y_data)).batch(hp.bs)
training_dataset = zip_data.take(n_batches_training)
val_dataset = zip_data.skip(n_batches_training)

# Initialize, build, and fit the model
K_model = deepDMDwithTF.NeuralNetworkModel(hp)
K_model.compile(optimizer=tf.optimizers.Adagrad(hp.lr))
history = K_model.fit(training_dataset, validation_data = val_dataset, 
                   epochs=hp.ep, callbacks=[early_stop_cb, timing_cb], shuffle = True)
m_stop = time.time()

# print info
print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')

timing_dict['model_training_time_module'] = (m_stop - m_start)/60
timing_dict['model_training_time_keras'] = sum(timing_cb.logs)/60
timing_dict['model_training_time_per_epoch'] = timing_cb.logs

with open(path_handler.get_absolute_path(output_dir, "timing_" + _SUFFIX + ".json"), 'w') as fp:
    json.dump(timing_dict, fp)