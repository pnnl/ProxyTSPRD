# nsys profile -t cuda,osrt,nvtx -o ../../../logs/power_systems/scenarios_30/nsys_cpu_e1_b8192_r1_Apt -w true --force-overwrite true C:\Users\jain432\Anaconda3\envs\tf\python.exe t0_TimeSeriesPrediction.py
    
# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------

# Standard Libraries
import os
import json
import datetime
import numpy as np
import tensorflow as tf

import time
import nvtx

tf.keras.backend.clear_session()
tf.keras.backend.set_floatx('float64')
print("[INFO] Tensorflow version: ", tf.__version__)
# print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')
print(sys.path)
    
from proxy_apps.apps.timeseries_prediction import deepDMD

from proxy_apps.utils.tf import TimingCallback
from proxy_apps.utils.data.main import NpEncoder
from proxy_apps.utils import file_reader, path_handler
from proxy_apps.utils.data.grid import GridNetworkDataHandler


# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------
os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"

config = file_reader.read_config()

_PLATFORM = config["model"]["platform"]
_N_EPOCHS = int(config["model"]["n_epochs"])
_BATCH_SIZE = int(config["model"]["batch_size"])
_VERSION = config["model"]["version"]
_NROWS = int(config["data"]["n_rows"])
_NCOLS = int(config["data"]["n_cols"])
_REPEAT_COLS = int(config["data"]["repeat_cols"])

_LABEL = '_Apt'
_SUFFIX = _PLATFORM + '_' + \
            'e' + str(_N_EPOCHS) + '_' + \
            'b' + str(_BATCH_SIZE) + '_' + \
            'r' + str(_REPEAT_COLS) + _LABEL

performance_dict = dict()

tic = time.time()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# output directory
output_dir = path_handler.get_absolute_path(curr_dir, config["info"]["output_dir"])
if not os.path.exists(output_dir): os.makedirs(output_dir)

# ------------------------------- DATA LOADING ------------------------------------------------   

data_loading = nvtx.start_range("Data Loading")
data_handler = GridNetworkDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS) 
scenario_data, data_loading_time = data_handler.load_grid_data()
performance_dict['data_loading_time'] = data_loading_time
nvtx.end_range(data_loading)

# ------------------------------- DATA PREPROCESSING ------------------------------------------------

data_processing = nvtx.start_range("Data Processing")
X_data, Y_data, U_data, V_data, Yp, Yf, processing_time = data_handler.create_windows(scenario_data)
performance_dict['data_processing_time'] = processing_time
nvtx.end_range(data_processing)

# ------------------------------- DATA NORMALIZATION ------------------------------------------------

data_norm = nvtx.start_range("Data Normalization")
X_array, Y_array, U_array, V_array, Yp_array, Yf_array, scaling_time = data_handler.scale_data(X_data, Y_data, U_data, V_data, Yp, Yf)
performance_dict['data_scaling_time'] = scaling_time
print(Yp_array.shape, Yf_array.shape)
nvtx.end_range(data_norm)

# ------------------------------- MODEL SETUP ------------------------------------------------
# timing callback
timing_cb = TimingCallback()

# Stopping criteria if the training loss doesn't go down by 1e-3
early_stop_cb = tf.keras.callbacks.EarlyStopping(
    monitor='loss', min_delta = 1e-3, verbose = 1, mode='min', patience = 3, 
    baseline=None, restore_best_weights=True)

# Create a TensorBoard Profiler
logs = path_handler.get_absolute_path(curr_dir, config["model"]["tb_log_dir"] + _VERSION + "/" + _SUFFIX)
tb_callback = tf.keras.callbacks.TensorBoard(log_dir=logs, histogram_freq=1, embeddings_freq=1, profile_batch='5,15')

# Initialize Hyperparameters - we can keep it as a dict instead of creating a separate class
hyper_param_dict = config["model"]["hyperparameters"]
hyper_param_dict['original_dim']       = _REPEAT_COLS * _NCOLS   # input data dimension
hyper_param_dict['num_epochs']         = _N_EPOCHS  # Number of epochs  
hyper_param_dict['batch_size']         = _BATCH_SIZE

hp = deepDMD.HyperParameters(hyper_param_dict)

performance_dict["n_epochs"] = hp.ep
performance_dict["batch_size"] = hp.bs
performance_dict["n_training_batches"] = 1 - hp.vs
performance_dict["n_val_batches"] = hp.vs

# ------------------------------- MODEL TRAINING ------------------------------------------------
# Initialize, build, and fit the model
m_start = time.time()
K_model = deepDMD.NeuralNetworkModel(hp)
K_model.compile(optimizer=tf.optimizers.Adagrad(hp.lr))

@nvtx.annotate(color="blue")
def fit_model():
    history = K_model.fit([X_array, Y_array], 
                      batch_size=hp.bs, 
                      epochs=hp.ep, 
                      callbacks=[early_stop_cb, timing_cb, tb_callback], 
                      shuffle=True)
    return history

history = fit_model()

m_stop = time.time()

# print info
print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')

performance_dict['training_time_module'] = (m_stop - m_start)
performance_dict['training_time_epoch_wise'] = timing_cb.logs
performance_dict['training_loss'] = history.history['loss']
# performance_dict['validation_loss'] = history.history['val_loss']

inf_time_start = time.time()

Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss = K_model([Yp_array, Yf_array], training=False)

inf_time_stop = time.time()
performance_dict["inference_size"] = Yp_array.shape[0]
performance_dict["inference_time"] = inf_time_stop - inf_time_start
performance_dict["test_Kloss_model"] = Kloss.numpy()

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

# ------------------------------- SAVE PERFORMANCE DICT ------------------------------------------------
with open(path_handler.get_absolute_path(output_dir, "performance_" + _SUFFIX + ".json"), 'w') as fp:
    json.dump(performance_dict, fp, cls=NpEncoder)
