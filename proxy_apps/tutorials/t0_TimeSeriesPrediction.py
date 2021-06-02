# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------

# Standard Libraries
import os
import json
import datetime
import numpy as np
import tensorflow as tf

import time
from timeit import default_timer as timer

tf.keras.backend.clear_session()
tf.keras.backend.set_floatx('float64')
print("[INFO] Tensorflow version: ", tf.__version__)
# print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.

# Custom Library
import sys
sys.path.append('../../')
print(sys.path)
    
from proxy_apps.apps.timeseries_prediction import deepDMD
from proxy_apps.utils import file_reader, path_handler
from proxy_apps.utils.data.grid import load_grid_data

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
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

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------
_N_EPOCHS = int(sys.argv[1])
_SUFFIX = 'e' + str(_N_EPOCHS) + '_Act'
config = file_reader.read_config()

performance_dict = dict()

tic = time.time()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# output directory
output_dir = path_handler.get_absolute_path(curr_dir, config["info"]["output_dir"])
if not os.path.exists(output_dir): os.makedirs(output_dir)

# ------------------------------- DATA LOADING ------------------------------------------------    
scenario_data, data_loading_time = load_grid_data(path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]))
performance_dict['data_loading_time'] = data_loading_time

# ------------------------------- DATA PREPROCESSING ------------------------------------------------
X_data, Y_data, U_data, V_data, whole_data, Yp, Yf, processing_time = create_windows(scenario_data)
performance_dict['data_processing_time'] = processing_time

# ------------------------------- DATA NORMALIZATION ------------------------------------------------
X_array, Y_array, U_array, V_array, Yp_array, Yf_array, normalization_time = dataset.shape[1]
performance_dict['data_scaling_time'] = scaling_time

# ------------------------------- MODEL SETUP ------------------------------------------------
# Hyperparameters
hyper_param_dict = config["hyperparameters"]
hyper_param_dict['num_epochs']         = _N_EPOCHS  # Number of epochs 

timing_cb = TimingCallback()

# Stopping criteria if the training loss doesn't go down by 1e-3
early_stop_cb = tf.keras.callbacks.EarlyStopping(
    monitor='loss', min_delta = 1e-3, verbose = 1, mode='min', patience = 3, 
    baseline=None, restore_best_weights=True)

# Create a TensorBoard Profiler
logs = path_handler.get_absolute_path(curr_dir, config["tb_log_dir"] + datetime.datetime.now().strftime("%Y%m%d-%H%M%S"))
tb_callback = tf.keras.callbacks.TensorBoard(log_dir=logs)

# Initialize Hyperparameters - we can keep it as a dict instead of creating a separate class
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
history = K_model.fit([X_array, Y_array], batch_size=hp.bs, 
                   epochs=hp.ep, callbacks=[early_stop_cb, timing_cb, tb_callback], shuffle=True)
m_stop = time.time()

# print info
print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')

performance_dict['training_time_module'] = (m_stop - m_start)
performance_dict['training_time_epoch_wise'] = timing_cb.logs
performance_dict['training_loss'] = history.history['loss']
# performance_dict['validation_loss'] = history.history['val_loss']

# ------------------------------- SAVE PERFORMANCE DICT ------------------------------------------------
with open(path_handler.get_absolute_path(output_dir, "performance_" + _SUFFIX + ".json"), 'w') as fp:
    json.dump(performance_dict, fp, cls=NpEncoder)
