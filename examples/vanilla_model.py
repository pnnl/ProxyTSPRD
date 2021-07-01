# Standard Libraries
import os
import json
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
_REPEAT_COLS = int(config["data"]["repeat_cols"])
_DTYPE = config["model"]["dtype"]

_LABEL = args.model_name
print(args)

tic = time.time()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# TensorFlow Setup
print("[INFO] Tensorflow version: ", tf.__version__)
gpus = tf.config.experimental.list_physical_devices('GPU')
for gpu in gpus:
    print("Name:", gpu.name, "  Type:", gpu.device_type)
    
print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.

def benchmark(dataset, num_epochs=2, steps=10):
    start_time = time.perf_counter()
    for epoch_num in range(num_epochs):
        for s, sample in enumerate(dataset):
            # Performing a training step
            time.sleep(0.01)
            if s == steps - 1:
                break
            
    print("Execution time:", time.perf_counter() - start_time)

tf.keras.backend.clear_session()
tf.keras.backend.set_floatx(_DTYPE)
tf.config.optimizer.set_jit(True)

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

    scenario_data = data_handler.load_grid_data()

l_stop = time.time()
print('[INFO]: Time taken for loading datasets:', l_stop - l_start, 'seconds')

if _LABEL in ["Baseline", "TFDataOptPrev"]:
    # ------------------------------- DATA PREPROCESSING ------------------------------------------------
    i_start = time.time()
    X_data, Y_data, U_data, V_data, Yp, Yf = data_handler.create_windows(scenario_data)
    i_stop = time.time()
    print('[INFO]: Time taken for creating X datasets:', i_stop - i_start, 'seconds')

    # ------------------------------- DATA NORMALIZATION ------------------------------------------------
    n_start = time.time()
    X_array, Y_array, U_array, V_array, Yp_array, Yf_array = data_handler.scale_data(X_data, Y_data, U_data, V_data, Yp, Yf)
    n_stop = time.time()
    print('[INFO]: Time taken for normalization:', n_stop - n_start, 'seconds')

# timing callback
timing_cb = TimingCallback()

model = tf.keras.Sequential([
    tf.keras.layers.Dense(128),
    tf.keras.layers.Dense(128),
    tf.keras.layers.Dense(64),
    tf.keras.layers.Dense(1)
])

model.compile(optimizer='adam', loss='mse')
model.build(input_shape=(None,136))
model.summary()

if _LABEL == "Baseline":
    m_start = time.time()
    # benchmark([X_data, Y_data])
    model.fit(X_array, Y_array, epochs=2, batch_size=_BATCH_SIZE, callbacks=[timing_cb])
    m_stop = time.time()
elif _LABEL == "TFDataOptPrev":
    # tensorflow dataset conversion
    tf_conv_start = time.time()
    training_dataset = tf.data.Dataset.zip((X_array, Y_array)).batch(_BATCH_SIZE)
    training_dataset = training_dataset.cache()
    training_dataset = training_dataset.shuffle(buffer_size=22)
    training_dataset = training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
    tf_conv_stop = time.time()
    print('[INFO]: Tensorflow Conversion Time:', tf_conv_stop - tf_conv_start, 'seconds')
    
    m_start = time.time()
    # benchmark(training_dataset)
    model.fit(training_dataset, epochs=_N_EPOCHS, callbacks=[timing_cb])
    m_stop = time.time()
elif _LABEL == "TFDataOpt":
    window_size = 800
    shift_size = 10
    stride = 1
    N = 3
    training_data_gen = data_handler.get_training_data(scenario_data, window_size, shift_size, stride, N, 1)
    training_dataset = training_data_gen.batch(_BATCH_SIZE)
#     training_dataset = training_dataset.cache()
#     training_dataset = training_dataset.shuffle(buffer_size=22)
#     training_dataset = training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
    m_start = time.time()
    # benchmark(training_dataset)
    model.fit(training_dataset, epochs=_N_EPOCHS, callbacks=[timing_cb], workers=64, use_multiprocessing=True)
    m_stop = time.time()
    
# print info
print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')