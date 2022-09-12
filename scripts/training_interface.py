# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------
# Standard Libraries
import os
# os.environ['OMP_NUM_THREADS'] = '48'
import math
import json
import datetime
import numpy as np
import time
import nvtx

import argparse

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')
    
from proxy_apps.apps.grid_prediction import deepDMD, proxyDeepDMD, proxyDeepDMDMGPU, proxyDeepDMDPyTorch, proxyDeepDMDPyTorchJIT, hyperparameters

from proxy_apps.utils.tf import TimingCallback
from proxy_apps.utils.data.main import NpEncoder
from proxy_apps.utils import file_reader, path_handler
from proxy_apps.utils.data.grid import GridNetworkDataHandler, GridNetworkTFDataHandler, GridNetworkNewGen, GridDataGenPyTorch

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------

# Parse Arguments
parser = argparse.ArgumentParser(description='Run Time Series Prediction')
parser.add_argument("--model_name", choices=["Baseline", "TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc", "PyTorch", "PyTorchOpt"], type=str,
    help="which implementation to run", required=True)
parser.add_argument("--platform", choices=["gpu", "cpu"], type=str, help="name of the platform (cpu/gpu)", required=True)
parser.add_argument("--machine_name", type=str, help="name of the machine", required=True)
parser.add_argument("--n_gpus", type=int, help="number of GPUs", default=0)
parser.add_argument("--n_cpus", type=int, help="number of CPUs", default=1)
parser.add_argument("--n_epochs", type=int, help="number of epochs", default=10)
parser.add_argument("--batch_size", type=int, help="batch size", default=1024)
parser.add_argument("--tensorboard", type=int, choices=[0, 1], help="whether to store tensorboard output")
parser.add_argument("--mixed_precision", type=int, choices=[0, 1], help="whether to turn on mixed precision or not")

args = parser.parse_args()

# System Setup
config = file_reader.read_config('config_baseline.json')

_N_EPOCHS = args.n_epochs
_BATCH_SIZE = args.batch_size
_APP_NAME = config["info"]["app_name"]
_NROWS = int(config["data"]["n_rows"])
_NCOLS = int(config["data"]["n_cols"])
_REPEAT_COLS = int(config["data"]["repeat_cols"])
_WINDOW_SIZE = int(config["data"]["window_size"])
_SHIFT_SIZE = int(config["data"]["shift_size"])
_STRIDE = int(config["data"]["stride"])
_N_SIGNALS = int(config["data"]["n_signals"])
_DTYPE = config["model"]["dtype"]
_MIXED_PRECISION = bool(args.mixed_precision)

_N_GPUS = args.n_gpus
_N_CPUS = args.n_cpus

_LABEL = args.model_name
_SUFFIX =  args.platform + '_' + \
            args.machine_name + '_' + \
            'ng' + str(_N_GPUS) + '_' + \
            'nc' + str(_N_CPUS) + '_' + \
            'e' + str(_N_EPOCHS) + '_' + \
            'b' + str(_BATCH_SIZE) + '_' + \
            'r' + str(_REPEAT_COLS) + '_' + \
            'mp' + str(args.mixed_precision) + '_' + _LABEL

performance_dict = dict()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# output directory
data_dir = path_handler.get_absolute_path(curr_dir, config["info"]["data_dir"] + config["info"]["name"] + "/" + config["info"]["app_name"] + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/")
if not os.path.exists(data_dir): os.makedirs(data_dir)
    
model_dir = path_handler.get_absolute_path(curr_dir, config["model"]["model_dir"] + config["info"]["name"] + "/" + config["info"]["app_name"] + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/")
if not os.path.exists(model_dir): os.makedirs(model_dir)
    
# ------------------------------- TensorFlow/PyTorch SETUP ------------------------------------------------

if _LABEL in ["PyTorch", "PyTorchOpt"]:
    import torch
    print("[INFO] PyTorch version: ", torch.__version__)
    
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print(device)
    
    if _DTYPE == "float64": torch.set_default_dtype(torch.float64)
    else: torch.set_default_dtype(torch.float32)
        
    if _MIXED_PRECISION:
        # set floatx
        _DTYPE = "float32"
        torch.set_default_dtype(torch.float32)
        
    def get_indexer(n_rows, window_size, shift_size, start_point, leave_last):
        return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]
else:   
    import tensorflow as tf

    # TensorFlow Setup
    print("[INFO] Tensorflow version: ", tf.__version__)
    gpus = tf.config.experimental.list_physical_devices('GPU')
    for gpu in gpus:
        print("Name:", gpu.name, "  Type:", gpu.device_type)
        # tf.config.experimental.set_memory_growth(gpu, True)

    logical_gpus = tf.config.experimental.list_logical_devices('GPU')
    for gpu in logical_gpus:
        print("Name:", gpu.name, "  Type:", gpu.device_type)

    # tf.compat.v1.disable_eager_execution()
    print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.

    # Setup TensorFlow
    tf.keras.backend.clear_session()
    if _LABEL not in ["Baseline"]: tf.config.optimizer.set_jit(True) # Enable XLA.

    # Setup Precision
    if _LABEL in ["Baseline"]: 
        tf.keras.backend.set_floatx('float64')
        def get_indexer(n_rows, window_size, shift_size, start_point, leave_last):
            return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]
        
    elif _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        tf.keras.backend.set_floatx(_DTYPE)
        if _MIXED_PRECISION:
            # set floatx
            _DTYPE = 'float32'
            tf.keras.backend.set_floatx(_DTYPE)
            # set policy
            policy = tf.keras.mixed_precision.Policy('mixed_float16')
            tf.keras.mixed_precision.set_global_policy(policy)
            # check dtypes
            print('Compute dtype: %s' % policy.compute_dtype)
            print('Variable dtype: %s' % policy.variable_dtype)

        @tf.function(experimental_compile=True)
        def get_indexer(n_rows, window_size, shift_size, start_point, leave_last):
            return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]

            
    # Mirror Strategy for MGPUs
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        mirrored_strategy = tf.distribute.MirroredStrategy()

    # To avoid GPU Congestion
    os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"
    # os.environ['TF_CUDNN_DETERMINISTIC']='1'


# ------------------------------- CREATE DATA HANDLER ------------------------------------------------   
data_handler_nvtx = nvtx.start_range("Create Data Handler")
dh_start = time.time()    
if _LABEL in ["Baseline", "TFDataOpt"]:
    data_handler = GridNetworkDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS,
                                            dtype=_DTYPE
                                         ) 

    scenario_data = data_handler.load_grid_data()

    # ------------------------------- DATA PREPROCESSING ------------------------------------------------
    X_data, Y_data = data_handler.create_windows(scenario_data)

    # ------------------------------- DATA NORMALIZATION ------------------------------------------------
    X_array, Y_array = data_handler.scale_data(X_data, Y_data)

elif _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
    data_handler = GridNetworkNewGen(scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"]),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS,
                                            d_type=_DTYPE
                                         )

    x_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 0, _N_SIGNALS)
    y_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 1, 0)
    
    scenario_data = data_handler.get_training_data(x_indexer, y_indexer)
    
elif _LABEL in ["PyTorch", "PyTorchOpt"]:
    scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"])
    dir_list = [scenario_dir + "/" + f + "/" for f in os.listdir(scenario_dir)]
    
    x_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 0, _N_SIGNALS)
    y_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 1, 0)

    dataset = GridDataGenPyTorch(dir_list, _NROWS, _NCOLS, _REPEAT_COLS, x_indexer, y_indexer, d_type=_DTYPE)  
    if _LABEL == "PyTorch":
        train_dataloader = torch.utils.data.DataLoader(dataset, batch_size=_BATCH_SIZE)
    elif _LABEL == "PyTorchOpt":
        train_dataloader = torch.utils.data.DataLoader(dataset, batch_size=_BATCH_SIZE, pin_memory=True, num_workers=int(_N_CPUS))

dh_stop = time.time()
performance_dict['data_handler_time'] = dh_stop-dh_start
nvtx.end_range(data_handler_nvtx)

# ------------------------------- CALLBACKS FOR TensorFlow ------------------------------------------------
if _LABEL not in ["PyTorch", "PyTorchOpt"]:
    # timing callback
    timing_cb = TimingCallback()

    # Stopping criteria if the training loss doesn't go down by 1e-3
    early_stop_cb = tf.keras.callbacks.EarlyStopping(
        monitor='loss', min_delta = 1e-3, verbose = 1, mode='min', patience = 3, 
        baseline=None, restore_best_weights=True)

    # all callbacks
    callbacks=[]# [early_stop_cb, timing_cb]
    if _LABEL in ["Baseline", "TFDataGen"]: 
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
hyper_param_dict['dtype']         = _DTYPE
    
hp = hyperparameters.HyperParameters(hyper_param_dict)
hp.model_name         = _LABEL

performance_dict["n_epochs"] = hp.ep
performance_dict["batch_size"] = hp.bs


if _LABEL == "Baseline":
    # ------------------------------- MODEL TRAINING ------------------------------------------------
    # Initialize, build, and fit the model
    K_model = deepDMD.NeuralNetworkModel(hp)
    K_model.compile(optimizer=tf.optimizers.Adagrad(hp.lr))

    # training
    model_training_nvtx = nvtx.start_range("Training")
    m_start = time.time()
    history = K_model.fit([X_array, Y_array], batch_size=hp.bs, 
                      epochs=hp.ep, 
                      callbacks=callbacks, 
                      shuffle=True)
    m_stop = time.time()
    nvtx.end_range(model_training_nvtx)
    
    # print info
    print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
    print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')

    performance_dict['training_time_module'] = (m_stop - m_start)
    performance_dict['training_time_epoch_wise'] = timing_cb.logs
    performance_dict['training_loss'] = history.history['loss']
    
    K_model.save(path_handler.get_absolute_path(model_dir, _SUFFIX))
    
elif _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:

    # ------------------------------- MODEL TRAINING ------------------------------------------------
    
    # Initialize and build the model
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        with mirrored_strategy.scope():
            K_model = proxyDeepDMDMGPU.Encoder(hp)
            optimizer = tf.optimizers.Adagrad(hp.lr)
            if _MIXED_PRECISION: optimizer = tf.keras.mixed_precision.LossScaleOptimizer(optimizer) 
            K_model.compile(optimizer=optimizer)
    else:
        K_model = proxyDeepDMD.NeuralNetworkModel(hp, mixed_precision=_MIXED_PRECISION)
        optimizer = tf.optimizers.Adagrad(hp.lr)
        if _MIXED_PRECISION: optimizer = tf.keras.mixed_precision.LossScaleOptimizer(optimizer) 
        K_model.compile(optimizer=optimizer)
    
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        hp.bs = hp.bs * mirrored_strategy.num_replicas_in_sync
        print(mirrored_strategy.num_replicas_in_sync)
    
    # generate dataset
    data_options = tf.data.Options()
    data_options.experimental_distribute.auto_shard_policy = tf.data.experimental.AutoShardPolicy.DATA
    zip_data = scenario_data.with_options(data_options).batch(hp.bs)
    
    training_dataset = zip_data.cache()
    
    shuffle_buffer_size = x_indexer.shape[0] * x_indexer.shape[1] * len(data_handler.dir_list) // hp.bs
    if _LABEL in ["TFDataOptMGPUAcc"]: 
        shuffle_buffer_size = mirrored_strategy.num_replicas_in_sync * shuffle_buffer_size
        training_dataset = training_dataset.repeat(mirrored_strategy.num_replicas_in_sync)
        
    training_dataset = training_dataset.shuffle(buffer_size=shuffle_buffer_size)
    training_dataset = training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
    
    # for multi-gpu, split the data
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        training_dataset = mirrored_strategy.experimental_distribute_dataset(training_dataset)
        
    # compile and fit model
    model_training_nvtx = nvtx.start_range("Training")
    m_start = time.time()
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        trainer = proxyDeepDMDMGPU.NeuralNetworkModel(hp, K_model, mixed_precision=_MIXED_PRECISION)
        all_loss, epoch_time, avg_batch_time = trainer.fit(training_dataset, n_epochs=hp.ep, batch_size=hp.bs, steps_per_epoch=shuffle_buffer_size)
    else:
        K_model.encoder.build(input_shape=(None, _REPEAT_COLS * _NCOLS))        
        history = K_model.fit(training_dataset, epochs=hp.ep, callbacks=callbacks, workers=_N_CPUS, use_multiprocessing=True)
        all_loss = history.history['loss'] 
    m_stop = time.time()
    nvtx.end_range(model_training_nvtx)
    
    # print loss
    print("Loss Values:", all_loss)

    # print info
    print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]: print('[INFO]: Time taken for model training (Keras):', sum(epoch_time), 'seconds')
    else: print('[INFO]: Time taken for model training (Keras):', sum(timing_cb.logs), 'seconds')

    performance_dict['training_time_module'] = (m_stop - m_start)
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]: performance_dict['training_time_epoch_wise'] = epoch_time
    else: performance_dict['training_time_epoch_wise'] = timing_cb.logs
    performance_dict['training_loss'] = all_loss
    
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]: trainer.encoder.save(path_handler.get_absolute_path(model_dir, _SUFFIX))
    else: K_model.encoder.save(path_handler.get_absolute_path(model_dir, _SUFFIX))

elif _LABEL in ["PyTorch", "PyTorchOpt"]:

    # ------------------------------- MODEL TRAINING ------------------------------------------------
    use_amp = False
    if _MIXED_PRECISION: use_amp = True
    
    # if _LABEL in ["PyTorch"]:
    K_model = proxyDeepDMDPyTorch.Encoder(hp, device, use_amp)
    # elif _LABEL in ["PyTorchOpt"]:
        # K_model = torch.jit.script(proxyDeepDMDPyTorchJIT.Encoder(hp))
    
    if torch.cuda.device_count() > 1:
        print("Let's use", torch.cuda.device_count(), "GPUs!")
        # dim = 0 [30, xxx] -> [10, ...], [10, ...], [10, ...] on 3 GPUs
        K_model = torch.nn.DataParallel(K_model)
    
    K_model.to(device)
    optimizer = torch.optim.Adagrad(K_model.parameters(), lr=hp.lr)
    
    # fit model
    model_training_nvtx = nvtx.start_range("Training")
    m_start = time.time()
    # if _LABEL in ["PyTorch"]:
    trainer = proxyDeepDMDPyTorch.NeuralNetworkModel(hp, K_model, optimizer, device, use_amp)
    # elif _LABEL in ["PyTorchOpt"]:
    #     trainer = proxyDeepDMDPyTorchJIT.NeuralNetworkModel(hp, K_model, optimizer, device, use_amp)
    
    all_loss, epoch_time, avg_batch_time = trainer.fit(train_dataloader)
    m_stop = time.time()
    nvtx.end_range(model_training_nvtx)
    
    # print loss
    all_loss = [x.cpu().data.numpy() for x in all_loss]
    print("Loss Values:", all_loss)

    # print info
    print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
    print('[INFO]: Time taken for model training (Keras):', sum(epoch_time), 'seconds')

    performance_dict['training_time_module'] = (m_stop - m_start)
    performance_dict['training_time_epoch_wise'] = epoch_time
    performance_dict['training_loss'] = all_loss
    
    # if _LABEL in ["PyTorch"]:
    torch.save(trainer.encoder, path_handler.get_absolute_path(model_dir, _SUFFIX))
    # elif _LABEL in ["PyTorchOpt"]:
    #    torch.jit.save(trainer.encoder, path_handler.get_absolute_path(model_dir, _SUFFIX))
    
# ------------------------------- SAVE PERFORMANCE DICT ------------------------------------------------
with open(path_handler.get_absolute_path(data_dir, "training_performance_" + _SUFFIX + ".json"), 'w') as fp:
    json.dump(performance_dict, fp, cls=NpEncoder)
