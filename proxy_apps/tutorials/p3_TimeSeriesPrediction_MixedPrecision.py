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

@tf.function
def convert_to_tensor(i):
    d = tf.py_function(func=get_data, inp=[i], Tout=tf.float32)
    d.set_shape(tf.TensorShape([1400, 136]))
    return d

@contextlib.contextmanager
def options(options):
  old_opts = tf.config.optimizer.get_experimental_options()
  tf.config.optimizer.set_experimental_options(options)
  try:
    yield
  finally:
    tf.config.optimizer.set_experimental_options(old_opts)

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

_N_EPOCHS = int(sys.argv[1])
_SUFFIX = 'e' + str(_N_EPOCHS) + '_TFDataOptMP'
keepN = 1000

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
output_dir = path_handler.get_absolute_path(curr_dir, config["info"]["output_dir"])
if not os.path.exists(output_dir): os.makedirs(output_dir)

with options({'constant_folding': True}):
    l_start = time.time()
    list_files = tf.data.Dataset.from_tensor_slices(dir_list)

    original_scenarios = list_files.map(convert_to_tensor,
                                        num_parallel_calls=tf.data.experimental.AUTOTUNE)
    trimmed_scenarios = original_scenarios.map(lambda scenario: tf.data.Dataset.from_tensor_slices(scenario).take(keepN),
                                        num_parallel_calls=tf.data.experimental.AUTOTUNE)
    l_stop = time.time()
    print('[INFO]: Time taken for loading datasets:', l_stop - l_start, 'seconds')
    print('[INFO]: Done ...')

    performance_dict['data_loading_time'] = (l_stop - l_start)

    i_start = time.time()
    window_size = 800
    shift = 10
    stride  = 1 # stride
    M = 2 # signifies number of time-shifts
    N = 3 # signifies number of time-shifts

    Yp_data = trimmed_scenarios.map(lambda window: window.take(keepN-1),
                                    num_parallel_calls=tf.data.experimental.AUTOTUNE)
    Yf_data = trimmed_scenarios.map(lambda window: window.skip(1),
                                    num_parallel_calls=tf.data.experimental.AUTOTUNE)
    window_X_data = trimmed_scenarios.map(lambda window: window.take(keepN-N).window(window_size, shift=shift, stride=stride, drop_remainder=True),
                                    num_parallel_calls=tf.data.experimental.AUTOTUNE)
    window_Y_data = trimmed_scenarios.map(lambda window: window.skip(1).window(window_size, shift=shift, stride=stride, drop_remainder=True),
                                    num_parallel_calls=tf.data.experimental.AUTOTUNE)
    window_U_data = trimmed_scenarios.map(lambda window: window.skip(M).window(window_size, shift=shift, stride=stride, drop_remainder=True),
                                    num_parallel_calls=tf.data.experimental.AUTOTUNE)
    window_V_data = trimmed_scenarios.map(lambda window: window.skip(N).window(window_size, shift=shift, stride=stride, drop_remainder=True),
                                    num_parallel_calls=tf.data.experimental.AUTOTUNE)

    for a in window_X_data.take(1): n_windows = a.cardinality().numpy()
    n_datapoints = len(dir_list) * n_windows * window_size

    i_stop = time.time()
    print('[INFO]: Time taken for creating X datasets:', i_stop - i_start, 'seconds')
    print('[INFO]: Chosen dataset size:', window_size)
    
    performance_dict['data_processing_time'] = (i_stop - i_start)

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
                                                             tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0),
                                        num_parallel_calls=tf.data.experimental.AUTOTUNE)
        flat_Yf_data = flat_Yf_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                             tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0),
                                        num_parallel_calls=tf.data.experimental.AUTOTUNE)
        flat_X_data = flat_X_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                           tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0),
                                        num_parallel_calls=tf.data.experimental.AUTOTUNE)
        flat_Y_data = flat_Y_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                           tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0),
                                        num_parallel_calls=tf.data.experimental.AUTOTUNE)
        flat_U_data = flat_U_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                           tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0),
                                        num_parallel_calls=tf.data.experimental.AUTOTUNE)
        flat_V_data = flat_V_data.map(lambda x: tf.concat([tf.math.multiply(tf.math.subtract(x[:68], 60), scale_factor), \
                                                           tf.math.multiply(tf.math.subtract(x[68:], 1), 10)], axis=0),
                                        num_parallel_calls=tf.data.experimental.AUTOTUNE)    
            
    n_stop = time.time()
    print('[INFO]: Time taken for normalization:', n_stop - n_start, 'seconds')

    performance_dict['data_normalization_time'] = (n_stop - n_start)

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
    hyper_param_dict['batch_size']         = 32

    timing_cb = TimingCallback()

    # Stopping criteria if the training loss doesn't go down by 1e-3
    early_stop_cb = tf.keras.callbacks.EarlyStopping(
        monitor='loss', min_delta=1e-3, verbose=1, mode='min', patience=3, 
        baseline=None, restore_best_weights=True)

    # Create a TensorBoard Profiler
    logs = path_handler.get_absolute_path(curr_dir, "../../../../logs/fit_v3/" + datetime.datetime.now().strftime("%Y%m%d-%H%M%S"))
    tb_callback = tf.keras.callbacks.TensorBoard(log_dir=logs)

    # Initialize Hyperparameters - we can keep it as a dict instead of creating a separate class
    hp = deepDMDwithTF.HyperParameters(hyper_param_dict)

    # Split the data
    n_batches = n_datapoints // hp.bs
    n_batches_training = int((1-hp.vs) * n_batches)

    zip_data = tf.data.Dataset.zip((flat_X_data, flat_Y_data)).batch(hp.bs)

    training_dataset = zip_data.take(n_batches_training)
    training_dataset = training_dataset.cache()
    training_dataset = training_dataset.shuffle(buffer_size=n_batches_training)
    training_dataset = training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)

    val_dataset = zip_data.skip(n_batches_training)
    val_dataset = val_dataset.cache()
    val_dataset = val_dataset.shuffle(buffer_size=n_batches-n_batches_training)
    val_dataset = val_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)

    performance_dict["n_epochs"] = hp.ep
    performance_dict["batch_size"] = hp.bs
    performance_dict["n_training_batches"] = n_batches_training
    performance_dict["n_val_batches"] = n_batches - n_batches_training

    # Initialize, build, and fit the model
    m_start = time.time()
    K_model = deepDMDwithTF.NeuralNetworkModel(hp)
    K_model.compile(optimizer=tf.optimizers.Adagrad(hp.lr))
    history = K_model.fit(training_dataset, 
                       epochs=hp.ep, callbacks=[early_stop_cb, timing_cb, tb_callback], shuffle=True)
    m_stop = time.time()

    # print info
    print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
    print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')

    performance_dict['training_time_module'] = (m_stop - m_start)
    performance_dict['training_time_epoch_wise'] = timing_cb.logs
    performance_dict['training_loss'] = history.history['loss']
    # performance_dict['validation_loss'] = history.history['val_loss']

    test_data = tf.data.Dataset.zip((flat_Yp_data, flat_Yf_data)).batch(29970, drop_remainder=True)
    test_data = test_data.cache()
    test_data = test_data.shuffle(buffer_size=29970)
    test_data = test_data.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)

    inf_time_start = time.time()

    Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss = K_model.predict(test_data)

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
