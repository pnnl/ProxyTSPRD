# nsys profile -t cuda,osrt,nvtx -o ../../../logs/power_systems/scenarios_30/nsys_cpu_e1_b8192_r1_Apt -w true --force-overwrite true C:\Users\jain432\Anaconda3\envs\tf\python.exe t0_TimeSeriesPrediction.py
# python run_linux_interface.py --model_name Baseline --platform gpu --machine_name a100_shared --n_gpus 1 --n_epochs 20 --batch_size 64000

# args.platform + '_' + \
#             args.machine_name + '_' + \
#             'ng' + str(args.n_gpus) + '_' + \
#             'nc' + str(args.n_cpus) + '_' + \
#             'e' + str(_N_EPOCHS) + '_' + \
#             'b' + str(_BATCH_SIZE) + '_' + \
#             'r' + str(_REPEAT_COLS) + '_' + _LABEL

# bash run_sbatch.sh Baseline gpu a100_shared 1 -1 20 64000
    
# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------

# Standard Libraries
import os
import math
import json
import datetime
import numpy as np
import tensorflow as tf

import time
import nvtx

import argparse

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')
    
from proxy_apps.apps.timeseries_prediction import deepDMD, proxyDeepDMD, proxyDeepDMDMGPU

from proxy_apps.utils.tf import TimingCallback
from proxy_apps.utils.data.main import NpEncoder
from proxy_apps.utils import file_reader, path_handler
from proxy_apps.utils.data.grid import GridNetworkDataHandler, GridNetworkTFDataHandler

@nvtx.annotate(color="blue")
def fit_np_model(K_model, X_array, Y_array, **kwargs):
    history = K_model.fit([X_array, Y_array], **kwargs)
    return history

@nvtx.annotate(color="blue")
def fit_tf_model(K_model, training_dataset, epochs, callbacks):
    # tf.print(training_dataset)
    history = K_model.fit(training_dataset, epochs=epochs, callbacks=callbacks, workers=16, use_multiprocessing=True)
    return history

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------

# Parse Arguments
parser = argparse.ArgumentParser(description='Run Time Series Prediction')
parser.add_argument("--model_name", choices=["Baseline", "TFDataOpt", "TFDataOptMGPU"], type=str,
    help="which implementation to run", required=True)
parser.add_argument("--platform", choices=["gpu", "cpu"], type=str, help="name of the platform (cpu/gpu)", required=True)
parser.add_argument("--machine_name", type=str, help="name of the machine", required=True)
parser.add_argument("--n_gpus", type=int, help="number of GPUs", default=0)
parser.add_argument("--n_cpus", type=int, help="number of CPUs", default=1)
parser.add_argument("--n_epochs", type=int, help="number of epochs", default=10)
parser.add_argument("--batch_size", type=int, help="batch size", default=1024)
parser.add_argument("--tensorboard", type=int, choices=[0, 1], help="whether to store tensorboard output")

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
_SUFFIX =  args.platform + '_' + \
            args.machine_name + '_' + \
            'ng' + str(args.n_gpus) + '_' + \
            'nc' + str(args.n_cpus) + '_' + \
            'e' + str(_N_EPOCHS) + '_' + \
            'b' + str(_BATCH_SIZE) + '_' + \
            'r' + str(_REPEAT_COLS) + '_' + _LABEL

performance_dict = dict()

tic = time.time()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# output directory
output_dir = path_handler.get_absolute_path(curr_dir, config["info"]["output_dir"] + config["info"]["name"] + "/" + config["info"]["app_name"] + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/")
if not os.path.exists(output_dir): os.makedirs(output_dir)

# ------------------------------- TensorFlow SETUP ------------------------------------------------

# TensorFlow Setup
print("[INFO] Tensorflow version: ", tf.__version__)
gpus = tf.config.experimental.list_physical_devices('GPU')
for gpu in gpus:
    print("Name:", gpu.name, "  Type:", gpu.device_type)
    
logical_gpus = tf.config.experimental.list_logical_devices('GPU')
for gpu in logical_gpus:
    print("Name:", gpu.name, "  Type:", gpu.device_type)
    
print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.

# Setup TensorFlow
tf.keras.backend.clear_session()

# Setup Precision
if args.model_name in ["Baseline"]: 
    tf.keras.backend.set_floatx('float64')
elif args.model_name in ["TFDataOpt", "TFDataOptMGPU"]:
    tf.config.optimizer.set_jit(True) # Enable XLA.
    tf.keras.backend.set_floatx(_DTYPE)

# Mirror Strategy for MGPUs
if args.model_name in ["TFDataOptMGPU"]:
    mirrored_strategy = tf.distribute.MirroredStrategy()

# To avoid GPU Congestion
os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"

# ------------------------------- DATA LOADING ------------------------------------------------   

data_loading = nvtx.start_range("Data Loading")
l_start = time.time()
data_handler = GridNetworkDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]),
                                        n_rows=_NROWS,
                                        n_cols=_NCOLS,
                                        repeat_cols=_REPEAT_COLS,
                                        dtype=_DTYPE
                                     ) 

scenario_data = data_handler.load_grid_data()
l_stop = time.time()
print('[INFO]: Time taken for loading datasets:', l_stop - l_start, 'seconds')
performance_dict['data_loading_time'] = l_stop-l_start
nvtx.end_range(data_loading)

# ------------------------------- DATA PREPROCESSING ------------------------------------------------

data_processing = nvtx.start_range("Data Processing")
i_start = time.time()
X_data, Y_data, U_data, V_data, Yp, Yf = data_handler.create_windows(scenario_data)
i_stop = time.time()
print('[INFO]: Time taken for creating X datasets:', i_stop - i_start, 'seconds')
performance_dict['data_processing_time'] = i_stop-i_start
nvtx.end_range(data_processing)

# ------------------------------- DATA NORMALIZATION ------------------------------------------------

data_norm = nvtx.start_range("Data Normalization")
n_start = time.time()
X_array, Y_array, U_array, V_array, Yp_array, Yf_array = data_handler.scale_data(X_data, Y_data, U_data, V_data, Yp, Yf)
n_stop = time.time()
print('[INFO]: Time taken for normalization:', n_stop - n_start, 'seconds')

performance_dict['data_scaling_time'] = n_stop-n_start
nvtx.end_range(data_norm)

# ------------------------------- MODEL SETUP ------------------------------------------------
# timing callback
timing_cb = TimingCallback()

# Stopping criteria if the training loss doesn't go down by 1e-3
early_stop_cb = tf.keras.callbacks.EarlyStopping(
    monitor='loss', min_delta = 1e-3, verbose = 1, mode='min', patience = 3, 
    baseline=None, restore_best_weights=True)

# all callbacks
callbacks=[]# [early_stop_cb, timing_cb]
if args.model_name in ["Baseline", "TFDataOpt"]: 
    callbacks.append(timing_cb)
if args.tensorboard==1: 
    # Create a TensorBoard Profiler
    logs = path_handler.get_absolute_path(curr_dir, config["model"]["tb_log_dir"] + _APP_NAME + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/tensorboard/" + _SUFFIX)
    tb_callback = tf.keras.callbacks.TensorBoard(log_dir=logs, histogram_freq=1, embeddings_freq=1, profile_batch=(1,20))

    callbacks.append(tb_callback)

# Initialize Hyperparameters - we can keep it as a dict instead of creating a separate class
hyper_param_dict = config["model"]["hyperparameters"]
hyper_param_dict['original_dim']       = _REPEAT_COLS * _NCOLS   # input data dimension
hyper_param_dict['num_epochs']         = _N_EPOCHS  # Number of epochs  
hyper_param_dict['batch_size']         = _BATCH_SIZE

if args.model_name == "Baseline":
    hp = deepDMD.HyperParameters(hyper_param_dict)
    hp.model_name         = args.model_name

    performance_dict["n_epochs"] = hp.ep
    performance_dict["batch_size"] = hp.bs

    # ------------------------------- MODEL TRAINING ------------------------------------------------
    # Initialize, build, and fit the model
    K_model = deepDMD.NeuralNetworkModel(hp)
    K_model.compile(optimizer=tf.optimizers.Adagrad(hp.lr))

    # training
    m_start = time.time()
    history = fit_np_model(K_model, X_array, Y_array, batch_size=hp.bs, 
                      epochs=hp.ep, 
                      callbacks=callbacks, 
                      shuffle=True)
    m_stop = time.time()

    # print info
    print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
    print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')

    performance_dict['training_time_module'] = (m_stop - m_start)
    performance_dict['training_time_epoch_wise'] = timing_cb.logs
    performance_dict['training_loss'] = history.history['loss']
    
    # inference
    inf_time_start = time.time()
    Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss = K_model([Yp_array, Yf_array], training=False)
    inf_time_stop = time.time()
    
    performance_dict["inference_size"] = Yp_array.shape[0]
    performance_dict["inference_time"] = inf_time_stop - inf_time_start
    performance_dict["test_Kloss_model"] = Kloss.numpy()

elif args.model_name in ["TFDataOpt", "TFDataOptMGPU"]:

    # convert to dataset
    test_size = Yp_array.shape[0]

    Xd_array = tf.data.Dataset.from_tensor_slices(X_array)
    Yd_array = tf.data.Dataset.from_tensor_slices(Y_array)
    Ud_array = tf.data.Dataset.from_tensor_slices(U_array)
    Vd_array = tf.data.Dataset.from_tensor_slices(V_array)
    Ydp_array = tf.data.Dataset.from_tensor_slices(Yp_array)
    Ydf_array = tf.data.Dataset.from_tensor_slices(Yf_array)

    hyper_param_dict['dtype']         = _DTYPE
    hp = proxyDeepDMD.HyperParameters(hyper_param_dict)
    hp.model_name         = args.model_name

    performance_dict["n_epochs"] = hp.ep
    performance_dict["batch_size"] = hp.bs
    
    # ------------------------------- MODEL TRAINING ------------------------------------------------
    # Initialize, build, and fit the model
    if args.model_name in ["TFDataOptMGPU"]:
        with mirrored_strategy.scope():
            K_model = proxyDeepDMDMGPU.Encoder(hp)
            optimizer = tf.optimizers.Adagrad(hp.lr)
    else:
        K_model = proxyDeepDMD.NeuralNetworkModel(hp)
        optimizer = tf.optimizers.Adagrad(hp.lr)
    
    if args.model_name in ["TFDataOptMGPU"]:
        hp.bs = hp.bs * mirrored_strategy.num_replicas_in_sync
        print(mirrored_strategy.num_replicas_in_sync)
        
    # generate dataset
    data_options = tf.data.Options()
    data_options.experimental_distribute.auto_shard_policy = tf.data.experimental.AutoShardPolicy.DATA
    zip_data = tf.data.Dataset.zip((Xd_array, Yd_array)).with_options(data_options).batch(hp.bs)
    
    training_dataset = zip_data.cache()
    training_dataset = training_dataset.shuffle(buffer_size=X_array.shape[0]//hp.bs)
    training_dataset = training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
    
    if args.model_name in ["TFDataOptMGPU"]:
        training_dataset = mirrored_strategy.experimental_distribute_dataset(training_dataset)
    
    # compile and fit model
    K_model.compile(optimizer=optimizer)
    m_start = time.time()
    if args.model_name in ["TFDataOptMGPU"]:
        trainer = proxyDeepDMDMGPU.NeuralNetworkModel(hp, K_model)
        all_loss = trainer.fit(training_dataset, n_epochs=hp.ep, batch_size=hp.bs, steps_per_epoch=math.ceil(X_array.shape[0]//hp.bs))
    else:
        history = fit_tf_model(K_model, training_dataset, epochs=hp.ep, callbacks=callbacks)
        all_loss = history.history['loss']    
    m_stop = time.time()

    # print info
    print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
    print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')

    performance_dict['training_time_module'] = (m_stop - m_start)
    performance_dict['training_time_epoch_wise'] = timing_cb.logs
    performance_dict['training_loss'] = all_loss
    
    # inference
    test_data = tf.data.Dataset.zip((Ydp_array, Ydf_array)).batch(test_size, drop_remainder=True)
    test_data = test_data.cache()
    test_data = test_data.shuffle(buffer_size=1)
    test_data = test_data.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)

    inf_time_start = time.time()
    
    if args.model_name in ["TFDataOptMGPU"]:
        for t in test_data.take(1):
            Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss = trainer.predict_step(t)
            Kloss = Kloss.numpy()
    else:
        Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss = K_model.predict(test_data)

    inf_time_stop = time.time()
    performance_dict["inference_size"] = test_size
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
# print(performance_dict)

# ------------------------------- SAVE PERFORMANCE DICT ------------------------------------------------
with open(path_handler.get_absolute_path(output_dir, "performance_" + _SUFFIX + ".json"), 'w') as fp:
    json.dump(performance_dict, fp, cls=NpEncoder)
