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

import onnx
import onnxruntime as ort

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')
    
from proxy_apps.apps.timeseries_prediction import deepDMD, proxyDeepDMD, proxyDeepDMDMGPU, proxyDeepDMDPyTorch, hyperparameters

from proxy_apps.utils.tf import TimingCallback
from proxy_apps.utils.data.main import NpEncoder
from proxy_apps.utils import file_reader, path_handler
from proxy_apps.utils.data.grid import GridNetworkDataHandler, GridNetworkTFDataHandler, GridNetworkNewGen, GridDataGenPyTorch, TransientDataset

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------

# Parse Arguments
parser = argparse.ArgumentParser(description='Run Time Series Prediction')
parser.add_argument("--model_name", choices=["Baseline", "TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc", "PyTorch", "TFOnnx", "PyOnnx"], type=str,
    help="which implementation to run", required=True)
parser.add_argument("--platform", choices=["gpu", "cpu"], type=str, help="name of the platform (cpu/gpu)", required=True)
parser.add_argument("--machine_name", type=str, help="name of the machine", required=True)
parser.add_argument("--n_gpus", type=int, help="number of GPUs", default=0)
parser.add_argument("--n_cpus", type=int, help="number of CPUs", default=1)
parser.add_argument("--n_epochs", type=int, help="number of epochs", default=10)
parser.add_argument("--batch_size", type=int, help="batch size", default=1024)
parser.add_argument("--tensorboard", type=int, choices=[0, 1], help="whether to store tensorboard output")
parser.add_argument("--mixed_precision", type=int, choices=[0, 1], help="whether to turn on mixed precision or not")
parser.add_argument("--onnx", type=int, choices=[0, 1], help="whether to use onnx for the implementation")

args = parser.parse_args()

# System Setup
config = file_reader.read_config()

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
_ONNX_IMPL = bool(args.onnx)
_INFERENCE_BS = 8192
print("ONNX IMPLEMENTATION: ", _ONNX_IMPL)

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
model_dir = path_handler.get_absolute_path(curr_dir, config["model"]["model_dir"] + config["info"]["name"] + "/" + config["info"]["app_name"] + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/")

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

if _LABEL == "PyTorch":
    import torch
    print("[INFO] PyTorch version: ", torch.__version__)
    
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print(device)
    
    if _DTYPE == "float64": torch.set_default_dtype(torch.float64)
    else: torch.set_default_dtype(torch.float32)
        
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

    # Mirror Strategy for MGPUs
    if _LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        mirrored_strategy = tf.distribute.MirroredStrategy()

    # To avoid GPU Congestion
    os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"

    @tf.function(experimental_compile=True)
    def get_indexer(n_rows, window_size, shift_size, start_point, leave_last):
        return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]


if _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
    class DataGenerator(tf.keras.utils.Sequence):
        'Generates data for Keras'
        def __init__(self, file_lists, n_rows, n_cols, repeat_cols):
            'Initialization'
            self.n_rows = n_rows 
            self.n_cols = n_cols
            self.repeat_cols = repeat_cols 
            self.file_lists = file_lists

        def __len__(self):
            'Denotes the number of batches per epoch'
            return len(self.file_lists)

        def __getitem__(self, index):
            'Generate one batch of data'
            file_name = self.file_lists[index].decode('utf-8')
            dataset = TransientDataset(file_name)
            raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), self.repeat_cols, axis=1)[:self.n_rows, :]


            return raw_data
elif _LABEL == "PyTorch":    
    class GridDataGenPyTorch(torch.utils.data.Dataset):
        'Characterizes a dataset for PyTorch'
        def __init__(self, dir_list, n_rows, n_cols, repeat_cols, d_type="float64"):
            'Initialization'
            self.n_rows = n_rows 
            self.n_cols = n_cols
            self.repeat_cols = repeat_cols 
            self.file_lists = dir_list

        def __len__(self):
            'Denotes the total number of samples'
            return len(self.file_lists)

        def __getitem__(self, index):
            'Generate one batch of data'
            file_name = self.file_lists[index]
            dataset = TransientDataset(file_name)
            raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), self.repeat_cols, axis=1)[:self.n_rows, :]


            return raw_data
        
# ------------------------------- CREATE DATA HANDLER ------------------------------------------------   

data_handler_nvtx = nvtx.start_range("Create Data Handler")
dh_start = time.time()    
inp_data_dir = "../../../data/NewTestScenarios/" # config["info"]["input_dir"]
if _LABEL in ["Baseline", "TFDataOpt"]:
    data_handler = GridNetworkDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, inp_data_dir),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS,
                                            dtype=_DTYPE
                                         ) 

    scenario_data = data_handler.load_grid_data()

elif _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
    if _ONNX_IMPL:
        data_handler = GridNetworkDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, inp_data_dir),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS,
                                            dtype=_DTYPE
                                         ) 

        scenario_data = data_handler.load_grid_data()
    else:
        scenario_dir=path_handler.get_absolute_path(curr_dir, inp_data_dir)
        DIR_LIST = [scenario_dir + "/" + f + "/" for f in os.listdir(scenario_dir)]

        scenario_data = tf.data.Dataset.from_generator(
            DataGenerator,
            output_signature = tf.TensorSpec(shape=(_NROWS, _NCOLS*_REPEAT_COLS), dtype=_DTYPE),
            args=(DIR_LIST, _NROWS, _NCOLS, _REPEAT_COLS)
        ).prefetch(tf.data.AUTOTUNE)
    
elif _LABEL == "PyTorch":
    if _ONNX_IMPL:
        data_handler = GridNetworkDataHandler(scenario_dir=path_handler.get_absolute_path(curr_dir, inp_data_dir),
                                            n_rows=_NROWS,
                                            n_cols=_NCOLS,
                                            repeat_cols=_REPEAT_COLS,
                                            dtype=_DTYPE
                                         ) 

        scenario_data = data_handler.load_grid_data()
    else:
        scenario_dir=path_handler.get_absolute_path(curr_dir, inp_data_dir)
        DIR_LIST = [scenario_dir + "/" + f + "/" for f in os.listdir(scenario_dir)]

        test_data = GridDataGenPyTorch(DIR_LIST, _NROWS, _NCOLS, _REPEAT_COLS)
        scenario_data = torch.utils.data.DataLoader(test_data, pin_memory=True, num_workers=int(_N_CPUS))    

dh_stop = time.time()
performance_dict['data_handler_time'] = dh_stop-dh_start
nvtx.end_range(data_handler_nvtx)

if _LABEL == "Baseline":
    K_model = tf.keras.models.load_model(path_handler.get_absolute_path(model_dir, _SUFFIX))
elif _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
    if _ONNX_IMPL: K_model = ort.InferenceSession(path_handler.get_absolute_path(model_dir, _SUFFIX + ".onnx"))
    else: K_model = tf.keras.models.load_model(path_handler.get_absolute_path(model_dir, _SUFFIX))
elif _LABEL in ["PyTorch"]:
    K_model = torch.load(path_handler.get_absolute_path(model_dir, _SUFFIX), map_location=device)

scale_factor = 2 * np.pi
split_index = (_NCOLS * _REPEAT_COLS) // 2
freq_pred_error_list = []
vol_pred_error_list = []

inf_time_start = time.time()
for X_actual in scenario_data:
    if _LABEL == "Baseline": X_scaled = X_actual.copy()
    elif _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]: 
        if _ONNX_IMPL: X_scaled = X_actual.copy()
        else: X_scaled = X_actual.numpy().copy()
    elif _LABEL in ["PyTorch"]: 
        X_actual = torch.squeeze(X_actual)
        X_scaled = X_actual.clone()

    # normalize the data
    X_scaled[:, :split_index]  = scale_factor * (X_actual[:, :split_index] - 60)
    X_scaled[:, split_index:] = 10 * (X_actual[:, split_index:] - 1)

    if _LABEL == "Baseline": Psi_X = K_model.encoder(X_scaled, training=False)
    elif _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]: 
        if _ONNX_IMPL: 
            Psi_X = K_model.run(None, input_feed={K_model.get_inputs()[0].name: X_scaled})[0]
        else:
            Psi_X = K_model.predict(X_scaled)
    elif _LABEL in ["PyTorch"]: Psi_X = K_model(X_scaled.to(device), training=False)
    
    # 1-time step evolution on observable space:
    if _LABEL in ["Baseline"]: 
        PSI_X = np.concatenate([X_scaled, Psi_X], 1)
        prediction = np.matmul(PSI_X, K_model.KO)
    elif _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
        if _ONNX_IMPL: 
            print("PSI_X================>", Psi_X)
        else:
            PSI_X = np.concatenate([X_scaled, Psi_X], 1)
            prediction = np.matmul(PSI_X, K_model.KO)
    elif _LABEL in ["PyTorch"]: 
        PSI_X = np.concatenate([X_scaled, torch.squeeze(Psi_X.cpu().detach()).numpy()], 1)
        prediction = np.matmul(PSI_X, K_model.KO.cpu().detach().numpy())

    if _LABEL in ["Baseline", "TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]: true_freq = X_actual[1:, :68]
    elif _LABEL in ["PyTorch"]: true_freq = X_actual[1:, :68].numpy()
        
    pred_freq = 60 + (1 / scale_factor) * prediction[:-1, :68]
    # print(true_freq, pred_freq)
    freq_pred_error = np.mean(np.sqrt(np.mean(np.square(true_freq - pred_freq), axis=1)))
    freq_pred_error_list.append(freq_pred_error)

    if _LABEL in ["Baseline", "TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]: true_voltage = X_actual[1:, split_index:split_index+68]
    elif _LABEL in ["PyTorch"]: true_voltage = X_actual[1:, split_index:split_index+68].numpy()
    pred_voltage = 1 + 0.1 * prediction[:-1, split_index:split_index+68]
    vol_pred_error = np.mean(np.sqrt(np.mean(np.square(true_voltage - pred_voltage), axis=1)))
    vol_pred_error_list.append(vol_pred_error)

inf_time_stop = time.time()

performance_dict["inference_time"] = inf_time_stop - inf_time_start
performance_dict["freq_pred_error_list"] = freq_pred_error_list
performance_dict["vol_pred_error_list"] = vol_pred_error_list

print("Inference Time", performance_dict["inference_time"])

# ------------------------------- SAVE PERFORMANCE DICT ------------------------------------------------
with open(path_handler.get_absolute_path(output_data_dir, "inference_performance_" + _SUFFIX + '_' + 'on' + str(args.onnx) + ".json"), 'w') as fp:
    json.dump(performance_dict, fp, cls=NpEncoder)