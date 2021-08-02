# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------
# Standard Libraries
import os
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
    
from proxy_apps.apps.timeseries_prediction import deepDMD, proxyDeepDMD, proxyDeepDMDMGPU, proxyDeepDMDPyTorch, hyperparameters

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
config = file_reader.read_config("config_s100_inf.json")

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
_INFERENCE_BS = 8192

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

tic = time.time()

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# output directory
output_data_dir = path_handler.get_absolute_path(curr_dir, config["info"]["data_dir"] + config["info"]["name"] + "/" + config["info"]["app_name"] + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/")
model_dir = path_handler.get_absolute_path(curr_dir, config["model"]["model_dir"] + config["info"]["name"] + "/" + config["model"]["app_name"] + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/")

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

    logical_gpus = tf.config.experimental.list_logical_devices('GPU')
    for gpu in logical_gpus:
        print("Name:", gpu.name, "  Type:", gpu.device_type)

    # tf.compat.v1.disable_eager_execution()
    print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.

    # Setup TensorFlow
    tf.keras.backend.clear_session()
    tf.config.optimizer.set_jit(True) # Enable XLA.

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
            hp.d_type         = _DTYPE
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

# ------------------------------- CREATE DATA HANDLER ------------------------------------------------   

data_handler_nvtx = nvtx.start_range("Create Data Handler")
dh_start = time.time()    
inp_data_dir = config["info"]["input_dir"]
if _LABEL in ["Baseline", "TFDataOpt"]:
    data_handler = GridNetworkDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, inp_data_dir),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS,
                                            dtype=_DTYPE
                                         ) 

    scenario_data = data_handler.load_grid_data()

    # ------------------------------- DATA PREPROCESSING ------------------------------------------------

    # Yp, Yf = data_handler.create_inference_windows(scenario_data)
    X_data, Y_data = data_handler.create_windows(scenario_data)

    # ------------------------------- DATA NORMALIZATION ------------------------------------------------

    # Yp_array, Yf_array = data_handler.scale_inference_data(Yp, Yf)
    X_array, Y_array = data_handler.scale_data(X_data, Y_data)

elif _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
    data_handler = GridNetworkNewGen(scenario_dir=path_handler.get_absolute_path(curr_dir, inp_data_dir),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS,
                                            d_type=_DTYPE
                                         )

    # yp_indexer = get_indexer(_NROWS, _NROWS-1, _SHIFT_SIZE, 0, 1)
    # yf_indexer = get_indexer(_NROWS, _NROWS-1, _SHIFT_SIZE, 1, 0)
    x_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 0, _N_SIGNALS)
    y_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 1, 0)
    
    # scenario_data = data_handler.get_training_data(yp_indexer, yf_indexer)
    scenario_data = data_handler.get_training_data(x_indexer, y_indexer, deterministic=True)
    
elif _LABEL in ["PyTorch", "PyTorchOpt"]:
    scenario_dir=path_handler.get_absolute_path(curr_dir, inp_data_dir)
    dir_list = [scenario_dir + "/" + f + "/" for f in os.listdir(scenario_dir)]
    
    # yp_indexer = get_indexer(_NROWS, _NROWS-1, _SHIFT_SIZE, 0, 1)
    # yf_indexer = get_indexer(_NROWS, _NROWS-1, _SHIFT_SIZE, 1, 0)
    x_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 0, _N_SIGNALS)
    y_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 1, 0)

    # test_size = yp_indexer.shape[0] * yp_indexer.shape[1] * len(dir_list)
    test_size = x_indexer.shape[0] * x_indexer.shape[1] * len(dir_list)

    # dataset = GridDataGenPyTorch(dir_list, _NROWS, _NCOLS, _REPEAT_COLS, yp_indexer, yf_indexer)
    # test_dataloader = torch.utils.data.DataLoader(dataset, batch_size=test_size)  
    test_data = GridDataGenPyTorch(dir_list, _NROWS, _NCOLS, _REPEAT_COLS, x_indexer, y_indexer, d_type=_DTYPE)
    if _LABEL == "PyTorch": test_dataloader = torch.utils.data.DataLoader(test_data, batch_size=_INFERENCE_BS)
    elif _LABEL == "PyTorchOpt": test_dataloader = torch.utils.data.DataLoader(test_data, batch_size=_INFERENCE_BS, pin_memory=True, num_workers=int(_N_CPUS))

dh_stop = time.time()
performance_dict['data_handler_time'] = dh_stop-dh_start
nvtx.end_range(data_handler_nvtx)

if _LABEL == "Baseline":
    K_model = tf.keras.models.load_model(path_handler.get_absolute_path(model_dir, _SUFFIX))
    
    # inference
    Kloss = []
    n_instances = X_array.shape[0] // _INFERENCE_BS
    X_batch = np.array_split(X_array[:_INFERENCE_BS*n_instances], n_instances)
    Y_batch = np.array_split(Y_array[:_INFERENCE_BS*n_instances], n_instances)
    inf_time_start = time.time()
    for X_sample, Y_sample in zip(X_batch, Y_batch):
        Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss_value = K_model.predict([X_sample, Y_sample], batch_size=_INFERENCE_BS)
        Kloss.append(Kloss_value)
    inf_time_stop = time.time()    
    # print(Psi_X.shape, PSI_X.shape, Psi_Y.shape, PSI_Y.shape, Kloss.shape)
    
    # performance_dict["inference_size"] = Yp_array.shape[0]
    performance_dict["inference_time"] = inf_time_stop - inf_time_start
    performance_dict["test_Kloss_model"] = Kloss
      
elif _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
    encoder = tf.keras.models.load_model(path_handler.get_absolute_path(model_dir, _SUFFIX))
    test_size = x_indexer.shape[0] * x_indexer.shape[1] * len(data_handler.dir_list)
    print("Test Size: ", test_size)
    
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        _INFERENCE_BS = _INFERENCE_BS * mirrored_strategy.num_replicas_in_sync
        print(mirrored_strategy.num_replicas_in_sync)
        
    test_data = scenario_data.batch(_INFERENCE_BS, drop_remainder=False)
    # test_data = test_data.cache()
    
    # for multi-gpu, split the data
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        test_data = mirrored_strategy.experimental_distribute_dataset(test_data)
        
    inf_time_start = time.time()
    if args.model_name in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        trainer = proxyDeepDMDMGPU.NeuralNetworkModel(hp, encoder)
        Kloss = []
        for t in test_data:
            Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss_val = trainer.distributed_test_step(t)
            Kloss.append(Kloss_val.numpy())
    else:
        K_model = proxyDeepDMD.NeuralNetworkModel(hp)
        K_model.encoder = encoder
        Kloss = []
        for t in test_data:
            Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss_val = K_model.predict(t, batch_size=_INFERENCE_BS)
            Kloss.append(Kloss_val)
    # print(Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss)
    inf_time_stop = time.time()
    
    # performance_dict["inference_size"] = test_size
    performance_dict["inference_time"] = inf_time_stop - inf_time_start
    performance_dict["test_Kloss_model"] = Kloss

elif _LABEL in ["PyTorch", "PyTorchOpt"]:
    
    use_amp = False
    if _MIXED_PRECISION: use_amp = True
    
    K_model = torch.load(path_handler.get_absolute_path(model_dir, _SUFFIX), map_location=device)
    optimizer = torch.optim.Adagrad(K_model.parameters(), lr=hp.lr)
    trainer = proxyDeepDMDPyTorch.NeuralNetworkModel(hp, K_model, optimizer, device, use_amp)
    
    inf_time_start = time.time()
    Psi_X, PSI_X, Psi_Y, PSI_Y, Kloss = trainer.predict(test_dataloader)
    inf_time_stop = time.time()

    # performance_dict["inference_size"] = test_size
    performance_dict["inference_time"] = inf_time_stop - inf_time_start
    performance_dict["test_Kloss_model"] = Kloss
     
print("Koopman loss: ", Kloss)

print('Psi_X shape:', Psi_X.shape)
print('Psi_Y shape:', Psi_Y.shape)
print('PSI_X shape:', PSI_X.shape)
print('PSI_X shape:', PSI_Y.shape)

if _LABEL in ["Baseline"]:
    K_deepDMD = K_model.KO.numpy()
elif _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
    K_deepDMD = trainer.encoder.KO.numpy()
elif _LABEL in ["TFDataGen"]:
    K_deepDMD = K_model.encoder.KO.numpy()
elif _LABEL in ["PyTorch", "PyTorchOpt"]:
    if torch.cuda.device_count() > 1: K_deepDMD = trainer.encoder.module.KO.cpu().data.numpy()
    else: K_deepDMD = trainer.encoder.KO.cpu().data.numpy()
    
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
with open(path_handler.get_absolute_path(output_data_dir, "inference_performance_" + _SUFFIX + ".json"), 'w') as fp:
    json.dump(performance_dict, fp, cls=NpEncoder)