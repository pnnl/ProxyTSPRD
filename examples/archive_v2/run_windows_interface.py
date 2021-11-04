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

import argparse
import contextlib
from contextlib import ExitStack

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')
    
from proxy_apps.apps.timeseries_prediction import deepDMD, proxyDeepDMD

from proxy_apps.utils.tf import TimingCallback
from proxy_apps.utils.data.main import NpEncoder
from proxy_apps.utils import file_reader, path_handler
from proxy_apps.utils.data.grid import GridNetworkDataHandler, GridNetworkTFDataHandler

@contextlib.contextmanager
def options(options):
    old_opts = tf.config.optimizer.get_experimental_options()
    tf.config.optimizer.set_experimental_options(options)
    try:
        yield
    finally:
        tf.config.optimizer.set_experimental_options(old_opts)

@nvtx.annotate(color="blue")
def fit_np_model(K_model, X_array, Y_array, **kwargs):
    history = K_model.fit([X_array, Y_array], **kwargs)
    return history

@nvtx.annotate(color="blue")
def fit_tf_model(K_model, training_dataset, epochs, callbacks, shuffle):
    tf.print(training_dataset)
    history = K_model.fit(training_dataset, epochs=epochs, callbacks=callbacks, shuffle=shuffle)
    return history

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------

# Parse Arguments
parser = argparse.ArgumentParser(description='Run Time Series Prediction')
parser.add_argument("--label", choices=["Baseline", "TFDataOpt", "TFDataOptMP", "TFDataOptMGPU", "TFDataOptMGPUMP"],
    help="which implementation to run", required=True)
parser.add_argument("--disable_gpu", action='store_true', help="write out uncompressed csv file")
parser.add_argument("--execute_eagerly", action='store_true', help="write out uncompressed csv file")

args = parser.parse_args()

# System Setup
config = file_reader.read_config()

_PLATFORM = config["model"]["platform"]
_N_EPOCHS = int(config["model"]["n_epochs"])
_BATCH_SIZE = int(config["model"]["batch_size"])
_VERSION = config["model"]["version"]
_NROWS = int(config["data"]["n_rows"])
_NCOLS = int(config["data"]["n_cols"])
_REPEAT_COLS = int(config["data"]["repeat_cols"])
_DTYPE = config["model"]["dtype"]

_LABEL = args.label
_SUFFIX = _PLATFORM + '_' + \
            'e' + str(_N_EPOCHS) + '_' + \
            'b' + str(_BATCH_SIZE) + '_' + \
            'r' + str(_REPEAT_COLS) + '_' + _LABEL

performance_dict = dict()

tic = time.time()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# output directory
output_dir = path_handler.get_absolute_path(curr_dir, config["info"]["output_dir"])
if not os.path.exists(output_dir): os.makedirs(output_dir)

# TensorFlow Setup
print("[INFO] Tensorflow version: ", tf.__version__)

if args.execute_eagerly: tf.compat.v1.enable_eager_execution()
else: tf.compat.v1.disable_eager_execution()

print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.

tf.keras.backend.clear_session()
if args.label in ["Baseline"]: tf.keras.backend.set_floatx('float64')
elif args.label in ["TFDataOpt", "TFDataOptMP", "TFDataOptMGPU", "TFDataOptMGPUMP"]: tf.keras.backend.set_floatx(_DTYPE)
elif args.label in ["TFDataOptMP", "TFDataOptMGPUMP"]:
    policy = tf.keras.mixed_precision.Policy('mixed_float16')
    tf.keras.mixed_precision.set_global_policy(policy)


# CUDA Setup
if args.disable_gpu: os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
else: os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"

with ExitStack() as stack:
    if args.label in ["TFDataOpt", "TFDataOptMP", "TFDataOptMGPU", "TFDataOptMGPUMP"]:
        gs = stack.enter_context(options({'constant_folding': True}))

    # ------------------------------- DATA LOADING ------------------------------------------------   

    data_loading = nvtx.start_range("Data Loading")
    
    if args.label == "Baseline":
        data_handler = GridNetworkDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]),
                                                n_rows=_NROWS,
                                                n_cols=_NCOLS,
                                                repeat_cols=_REPEAT_COLS) 
    elif args.label in ["TFDataOpt", "TFDataOptMP", "TFDataOptMGPU", "TFDataOptMGPUMP"]:
        data_handler = GridNetworkTFDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]),
                                                dtype=_DTYPE,
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

    if args.label == "Baseline":
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

        history = fit_np_model(K_model, X_array, Y_array, batch_size=hp.bs, 
                          epochs=hp.ep, 
                          callbacks=[early_stop_cb, timing_cb, tb_callback], 
                          shuffle=True)

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

    elif args.label in ["TFDataOpt", "TFDataOptMP", "TFDataOptMGPU", "TFDataOptMGPUMP"]:
        hyper_param_dict['dtype']         = _DTYPE
        hp = proxyDeepDMD.HyperParameters(hyper_param_dict)
        
        # Split the data
        # n_batches = data_handler.n_datapoints // hp.bs
        # n_batches_training = n_batches # int((1-hp.vs) * n_batches)
        
        zip_data = tf.data.Dataset.zip((X_array, Y_array)).batch(hp.bs)

        training_dataset = zip_data# .take(n_batches_training)
        training_dataset = training_dataset.cache()
        training_dataset = training_dataset.shuffle(buffer_size=hp.bs)
        training_dataset = training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)

        # val_dataset = zip_data.skip(n_batches_training)
        # val_dataset = val_dataset.cache()
        # val_dataset = val_dataset.shuffle(buffer_size=n_batches-n_batches_training)
        # val_dataset = val_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)

        performance_dict["n_epochs"] = hp.ep
        performance_dict["batch_size"] = hp.bs
        # performance_dict["n_training_batches"] = n_batches_training
        # performance_dict["n_val_batches"] = n_batches - n_batches_training

        # ------------------------------- MODEL TRAINING ------------------------------------------------
        # Initialize, build, and fit the model
        m_start = time.time()
        K_model = proxyDeepDMD.NeuralNetworkModel(hp)
        K_model.compile(optimizer=tf.optimizers.Adagrad(hp.lr))
        history = fit_tf_model(K_model, training_dataset, 
                           epochs=hp.ep, callbacks=[early_stop_cb, timing_cb, tb_callback], shuffle=True)
        m_stop = time.time()

        # print info
        print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
        print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')

        performance_dict['training_time_module'] = (m_stop - m_start)
        performance_dict['training_time_epoch_wise'] = timing_cb.logs
        performance_dict['training_loss'] = history.history['loss']
        # performance_dict['validation_loss'] = history.history['val_loss']
        
        test_data = tf.data.Dataset.zip((Yp_array, Yf_array)).batch(29970, drop_remainder=True)
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

    # ------------------------------- SAVE PERFORMANCE DICT ------------------------------------------------
    with open(path_handler.get_absolute_path(output_dir, "performance_" + _SUFFIX + ".json"), 'w') as fp:
        json.dump(performance_dict, fp, cls=NpEncoder)
