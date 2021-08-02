# python convert_to_onnx.py --model_name TFDataOptMGPU --platform gpu --machine_name a100 --n_gpus 1 --n_cpus 16 --n_epochs 20 --batch_size 65536 --tensorboard 0 --mixed_precision 0

import os
import numpy as np
import torch
import argparse

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')

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

def get_indexer(n_rows, window_size, shift_size, start_point, leave_last):
    return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]

# current directory
curr_dir = os.path.dirname(os.path.realpath(__file__))

# output directory
output_dir = path_handler.get_absolute_path(curr_dir, config["info"]["data_dir"] + config["info"]["name"] + "/" + config["info"]["app_name"] + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/")
model_dir = path_handler.get_absolute_path(curr_dir, config["model"]["model_dir"] + config["info"]["name"] + "/" + config["info"]["app_name"] + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/")

saved_model = path_handler.get_absolute_path(model_dir + "/onnx/", _SUFFIX + "_onnx")
onnx_file = path_handler.get_absolute_path(model_dir, _SUFFIX + ".onnx")
print(saved_model, onnx_file)

if _LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
    os.system("python -m tf2onnx.convert --saved-model " + saved_model + " --output " + onnx_file)
elif _LABEL in ["PyTorch", "PyTorchOpt"]:
    print("pytorch")
    if torch.cuda.is_available():
        map_location = None
    
    scenario_dir=path_handler.get_absolute_path(curr_dir, config["info"]["input_dir"])
    dir_list = [scenario_dir + "/" + f + "/" for f in os.listdir(scenario_dir)]
    
    x_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 0, _N_SIGNALS)
    y_indexer = get_indexer(_NROWS, _WINDOW_SIZE, _SHIFT_SIZE, 1, 0)

    dataset = GridDataGenPyTorch(dir_list, _NROWS, _NCOLS, _REPEAT_COLS, x_indexer, y_indexer)  
    test_dataloader = torch.utils.data.DataLoader(dataset, batch_size=_INFERENCE_BS, pin_memory=True, num_workers=int(_N_CPUS))
    print(test_dataloader)
    X, Y = next(iter(test_dataloader))
    print(X, Y)
    
    # load torch model
    map_location = "cpu"
    if torch.cuda.is_available(): map_location = None
    torch_model = torch.load(path_handler.get_absolute_path(model_dir, _SUFFIX + "_onnx"), map_location=map_location)
    
    # torch.zeros(_INFERENCE_BS, _NCOLS*_REPEAT_COLS, device=torch.device('cuda' if torch.cuda.is_available() else 'cpu'), dtype='float')
    
    # export to onnx
    torch.onnx.export(torch_model,               # model being run
                  (X.to(torch.device('cuda' if torch.cuda.is_available() else 'cpu')), False),
                  onnx_file,   # where to save the model (can be a file or file-like object)
                  export_params=True,        # store the trained parameter weights inside the model file
                  opset_version=9,          # the ONNX version to export the model to
                  do_constant_folding=False,  # whether to execute constant folding for optimization
                  input_names = ['input'],   # the model's input names
                  output_names = ['output'], # the model's output names
                  training=False
                 )