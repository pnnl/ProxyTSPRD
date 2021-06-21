# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------

# Standard Libraries
import os
import json
import datetime
import contextlib
import numpy as np
import tensorflow as tf

import time

tf.keras.backend.clear_session()
tf.keras.backend.set_floatx('float32')
print("[INFO] Tensorflow version: ", tf.__version__)
# print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')
print(sys.path)
    
from proxy_apps.apps.timeseries_prediction import deepDMDwithTF

from proxy_apps.utils.tf import TimingCallback
from proxy_apps.utils.data.main import NpEncoder
from proxy_apps.utils import file_reader, path_handler
from proxy_apps.utils.data.grid import GridNetworkTFDataHandler

@contextlib.contextmanager
def options(options):
  old_opts = tf.config.optimizer.get_experimental_options()
  tf.config.optimizer.set_experimental_options(options)
  try:
    yield
  finally:
    tf.config.optimizer.set_experimental_options(old_opts)

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------
os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"

_N_EPOCHS = int(config["model"]["n_epochs"])
_BATCH_SIZE = int(config["model"]["batch_size"])
_VERSION = config["model"]["version"]
_NROWS = int(config["data"]["n_rows"])
_NCOLS = int(config["data"]["n_cols"])
_REPEAT_COLS = int(config["data"]["repeat_cols"])

_LABEL = '_TFData'
_SUFFIX = 'e' + str(_N_EPOCHS) + _LABEL + "_" + datetime.datetime.now().strftime("%Y%m%d-%H%M%S")

config = file_reader.read_config()

performance_dict = dict()

tic = time.time()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# output directory
output_dir = path_handler.get_absolute_path(curr_dir, config["info"]["output_dir"] + '/' + _VERSION + '/')
if not os.path.exists(output_dir): os.makedirs(output_dir)

with options({'constant_folding': True}):
    # ------------------------------- DATA LOADING ------------------------------------------------   
    data_handler = GridNetworkTFDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS
                                            )
    scenario_data, data_loading_time = data_handler.load_grid_data()
    performance_dict['data_loading_time'] = data_loading_time
    # print("************* Number of columns: ", data_handler.n_cols)

    # ------------------------------- DATA PREPROCESSING ------------------------------------------------
    X_data, Y_data, U_data, V_data, Yp, Yf, processing_time = data_handler.create_windows(scenario_data)
    performance_dict['data_processing_time'] = processing_time

    # ------------------------------- DATA NORMALIZATION ------------------------------------------------
    X_array, Y_array, U_array, V_array, Yp_array, Yf_array, scaling_time = data_handler.scale_data(X_data, Y_data, U_data, V_data, Yp, Yf)
    performance_dict['data_scaling_time'] = scaling_time
    
    # ------------------------------- MODEL SETUP ------------------------------------------------
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

    hp = deepDMDwithTF.HyperParameters(hyper_param_dict)

    # Split the data
    n_batches = data_handler.n_datapoints // hp.bs
    n_batches_training = int((1-hp.vs) * n_batches)

    zip_data = tf.data.Dataset.zip((X_array, Y_array)).batch(hp.bs)
    training_dataset = zip_data.take(n_batches_training)
    val_dataset = zip_data.skip(n_batches_training)

    performance_dict["n_epochs"] = hp.ep
    performance_dict["batch_size"] = hp.bs
    performance_dict["n_training_batches"] = n_batches_training
    performance_dict["n_val_batches"] = n_batches - n_batches_training

    # ------------------------------- MODEL TRAINING ------------------------------------------------
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

# ------------------------------- SAVE PERFORMANCE DICT ------------------------------------------------
with open(path_handler.get_absolute_path(output_dir, "performance_" + _SUFFIX + ".json"), 'w') as fp:
    json.dump(performance_dict, fp, cls=NpEncoder)
