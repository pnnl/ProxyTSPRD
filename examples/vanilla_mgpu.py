# Standard Libraries
import os
import json
import logging
import datetime
import numpy as np
import tensorflow as tf

import time
import nvtx

import argparse

import math
from tensorflow.keras.utils import Progbar

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')
    
from proxy_apps.apps.timeseries_prediction import deepDMD, proxyDeepDMD, proxyDeepDMDMGPU

from proxy_apps.utils.tf import TimingCallback
from proxy_apps.utils.data.main import NpEncoder
from proxy_apps.utils import file_reader, path_handler
from proxy_apps.utils.data.grid import GridNetworkDataHandler, GridNetworkTFDataHandler, GridNetworkNewGen

logger = tf.get_logger()

parser = argparse.ArgumentParser(description='Run Time Series Prediction')
parser.add_argument("--model_name", choices=["Baseline", "TFDataOpt", "TFDataOptPrev"], type=str,
    help="which implementation to run", required=True)
parser.add_argument("--n_epochs", type=int, help="number of epochs", default=10)
parser.add_argument("--batch_size", type=int, help="batch size", default=1024)

args = parser.parse_args()

# System Setup
config = file_reader.read_config()

_N_EPOCHS = args.n_epochs
_BATCH_SIZE = args.batch_size
_APP_NAME = config["info"]["app_name"]
_NROWS = int(config["data"]["n_rows"])
_NCOLS = int(config["data"]["n_cols"])
_REPEAT_COLS = 10 # int(config["data"]["repeat_cols"])
_WINDOW_SIZE = int(config["data"]["window_size"])
_SHIFT_SIZE = int(config["data"]["shift_size"])
_STRIDE = int(config["data"]["stride"])
_N_SIGNALS = int(config["data"]["n_signals"])

_DTYPE = config["model"]["dtype"]

_LABEL = args.model_name

tic = time.time()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# TensorFlow Setup
logger.info(" [Training Script]: Tensorflow version: %s", tf.__version__)
gpus = tf.config.experimental.list_physical_devices('GPU')
for gpu in gpus:
    logger.info("Name:", gpu.name, "  Type:", gpu.device_type)

# tf.compat.v1.disable_eager_execution()
logger.info("Eager mode: %s", tf.executing_eagerly()) # For easy reset of notebook state.

tf.keras.backend.clear_session()
tf.keras.backend.set_floatx(_DTYPE)

strategy = tf.distribute.MirroredStrategy()
print('Number of devices: {}'.format(strategy.num_replicas_in_sync))

@tf.function(experimental_compile=True)
def get_indexer(n_rows, window_size, shift_size, start_point, leave_last):
    return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]
    
# ------------------------------- DATA LOADING ------------------------------------------------   
l_start = time.time()
if _LABEL == "Baseline":
    data_handler = GridNetworkDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS,
                                            dtype=_DTYPE
                                         ) 

    scenario_data = data_handler.load_grid_data()
elif _LABEL == "TFDataOptPrev":
    data_handler = GridNetworkTFDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS,
                                            dtype=_DTYPE
                                         ) 

    scenario_data = data_handler.load_grid_data()
elif _LABEL == "TFDataOpt":
    data_handler = GridNetworkNewGen(scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS,
                                            d_type=_DTYPE
                                         )

    x_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 0, _N_SIGNALS)
    y_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 1, 0)

    scenario_data = data_handler.get_training_data(x_indexer, y_indexer)

l_stop = time.time()
logger.info(' [Training Script]: Time taken for loading datasets: %f seconds', l_stop - l_start)

if _LABEL in ["Baseline", "TFDataOptPrev"]:
    # ------------------------------- DATA PREPROCESSING ------------------------------------------------
    i_start = time.time()
    X_data, Y_data, U_data, V_data, Yp, Yf = data_handler.create_windows(scenario_data)
    i_stop = time.time()
    logger.info(' [Training Script]: Time taken for creating datasets: %f seconds', i_stop - i_start)
    
    # ------------------------------- DATA NORMALIZATION ------------------------------------------------
    n_start = time.time()
    X_array, Y_array, U_array, V_array, Yp_array, Yf_array = data_handler.scale_data(X_data, Y_data, U_data, V_data, Yp, Yf)
    n_stop = time.time()
    logger.info(' [Training Script]: Time taken for normalization: %f seconds', n_stop - n_start)
    
hyper_param_dict = config["model"]["hyperparameters"]
hyper_param_dict['original_dim']       = _REPEAT_COLS * _NCOLS   # input data dimension
hyper_param_dict['num_epochs']         = _N_EPOCHS  # Number of epochs  
hyper_param_dict['batch_size']         = _BATCH_SIZE

hyper_param_dict['dtype']         = _DTYPE
hp = proxyDeepDMDMGPU.HyperParameters(hyper_param_dict)
hp.model_name         = _LABEL
hp.bs = hp.bs * strategy.num_replicas_in_sync

# ------------------------------- MODEL TRAINING ------------------------------------------------
with strategy.scope():
    model = proxyDeepDMDMGPU.Encoder(hp)
    optimizer = tf.optimizers.Adagrad(hp.lr)

    # compile and fit model
    model.compile(optimizer=optimizer)

    trainer = proxyDeepDMDMGPU.NeuralNetworkModel(hp, model)

# timing callback
timing_cb = TimingCallback()

if _LABEL == "Baseline":
    m_start = time.time()
    trainer.fit([X_array, Y_array], n_epochs=2, batch_size=_BATCH_SIZE, steps_per_epoch=22)
    m_stop = time.time()
elif _LABEL == "TFDataOptPrev":
    # tensorflow dataset conversion
    tf_conv_start = time.time()
    training_dataset = tf.data.Dataset.zip((X_array, Y_array)).batch(hp.bs)
    training_dataset = training_dataset.cache()
    training_dataset = training_dataset.shuffle(buffer_size=6)
    training_dataset = strategy.experimental_distribute_dataset(training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE))
    tf_conv_stop = time.time()
    logger.info('[INFO]: Tensorflow Conversion Time: %f seconds', tf_conv_stop - tf_conv_start)
    
    m_start = time.time()
    trainer.fit(training_dataset, n_epochs=_N_EPOCHS, batch_size=_BATCH_SIZE, steps_per_epoch=22)
    m_stop = time.time()
elif _LABEL == "TFDataOpt":
    data_options = tf.data.Options()
    data_options.experimental_distribute.auto_shard_policy = tf.data.experimental.AutoShardPolicy.DATA
    # training_dataset = scenario_data.with_options(data_options).repeat(strategy.num_replicas_in_sync).batch(hp.bs)
    training_dataset = scenario_data.with_options(data_options).batch(hp.bs)

    training_dataset = training_dataset.cache()
    # shuffle_buffer_size = x_indexer.shape[0]*x_indexer.shape[1]*len(data_handler.dir_list)*strategy.num_replicas_in_sync // hp.bs
    # print(shuffle_buffer_size)
    shuffle_buffer_size = x_indexer.shape[0]*x_indexer.shape[1]*len(data_handler.dir_list) // hp.bs
    print(shuffle_buffer_size)
    training_dataset = training_dataset.shuffle(buffer_size=shuffle_buffer_size)
    training_dataset = training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
    training_dataset_distributed = strategy.experimental_distribute_dataset(training_dataset)
    m_start = time.time()
    all_loss, e_time, b_time = trainer.fit(training_dataset_distributed, n_epochs=_N_EPOCHS, batch_size=_BATCH_SIZE, steps_per_epoch=shuffle_buffer_size)
    m_stop = time.time()
    
# print info
print(all_loss, e_time, b_time)
print('[INFO]: Time taken for model training (time module): %f seconds', m_stop - m_start)
logger.info('[INFO]: Time taken for model training (Keras): %f seconds', sum(timing_cb.logs))