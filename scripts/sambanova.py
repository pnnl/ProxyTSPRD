# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------
# Standard Libraries
import os
# os.environ['OMP_NUM_THREADS'] = '48'
import math
import json
import datetime
import numpy as np
import time

import argparse

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')
from proxy_apps.framework import RDU
    
# from proxy_apps.apps.timeseries_prediction import deepDMD, proxyDeepDMD, proxyDeepDMDMGPU, proxyDeepDMDPyTorch, proxyDeepDMDPyTorchJIT, hyperparameters

# from proxy_apps.utils.tf import TimingCallback
# from proxy_apps.utils.data.main import NpEncoder
# from proxy_apps.utils import file_reader, path_handler
# from proxy_apps.utils.data.grid import GridNetworkDataHandler, GridNetworkTFDataHandler, GridNetworkNewGen, GridDataGenPyTorch

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------

# Parse Arguments
parser = argparse.ArgumentParser(description='Run Time Series Prediction')
# parser.add_argument("--model_name", choices=["Baseline", "TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc", "PyTorch", "PyTorchOpt"], type=str,
#     help="which implementation to run", required=True)
parser.add_argument("--config_file", type=str,
    help="configuration file for model training", required=True)
parser.add_argument("--platform", choices=["gpu", "cpu", "rdu"], type=str, help="name of the platform (cpu/gpu)", required=True)
parser.add_argument("--machine_name", type=str, help="name of the machine", required=True)
parser.add_argument("--n_epochs", type=int, help="number of epochs", default=10)
parser.add_argument("--batch_size", type=int, help="batch size", default=1024)

if __name__ == "__main__":
    # read the arguments
    args = parser.parse_args()

    # initialize the framework
    framework = RDU(
        machine_name=args.machine_name,
        config_file=args.config_file,
        n_epochs=args.n_epochs,
        batch_size=args.batch_size
    )

    # select the interface
    framework.use_pytorch()

    # load data 
    train_data = framework.load_data()

    # compile model
    model = framework.init_model()
    framework.compile(model, train_data)

    # train model
    framework.train(model, train_data)

#     # read configuration file
#     # 'config_baseline.json'
#     config = file_reader.read_config(args.config_file)

# _N_EPOCHS = args.n_epochs
# _BATCH_SIZE = args.batch_size
# _APP_NAME = config["info"]["app_name"]
# _NROWS = int(config["data"]["n_rows"])
# _NCOLS = int(config["data"]["n_cols"])
# _REPEAT_COLS = int(config["data"]["repeat_cols"])
# _WINDOW_SIZE = int(config["data"]["window_size"])
# _SHIFT_SIZE = int(config["data"]["shift_size"])
# _STRIDE = int(config["data"]["stride"])
# _N_SIGNALS = int(config["data"]["n_signals"])
# _DTYPE = config["model"]["dtype"]
# _MIXED_PRECISION = bool(args.mixed_precision)

# _N_GPUS = args.n_gpus
# _N_CPUS = args.n_cpus

# _LABEL = args.model_name
# _SUFFIX =  args.platform + '_' + \
#             args.machine_name + '_' + \
#             'ng' + str(_N_GPUS) + '_' + \
#             'nc' + str(_N_CPUS) + '_' + \
#             'e' + str(_N_EPOCHS) + '_' + \
#             'b' + str(_BATCH_SIZE) + '_' + \
#             'r' + str(_REPEAT_COLS) + '_' + \
#             'mp' + str(args.mixed_precision) + '_' + _LABEL

# performance_dict = dict()

# # current directory
# curr_dir = os.path.dirname(os.path.realpath(__file__))

# # output directory
# data_dir = path_handler.get_absolute_path(curr_dir, config["info"]["data_dir"] + config["info"]["name"] + "/" + config["info"]["app_name"] + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/")
# if not os.path.exists(data_dir): os.makedirs(data_dir)
    
# model_dir = path_handler.get_absolute_path(curr_dir, config["model"]["model_dir"] + config["info"]["name"] + "/" + config["info"]["app_name"] + "/" + _DTYPE + "/R" + str(_REPEAT_COLS) + "/")
# if not os.path.exists(model_dir): os.makedirs(model_dir)