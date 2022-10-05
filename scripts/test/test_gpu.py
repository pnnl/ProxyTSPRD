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
from proxy_apps.framework.gpu import GPU
from proxy_apps.apps import LSTMProxyApp, CNNProxyApp

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------

# Parse Arguments
parser = argparse.ArgumentParser(description='Run Time Series Prediction')
# parser.add_argument("--model_name", choices=["Baseline", "TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc", "PyTorch", "PyTorchOpt"], type=str,
#     help="which implementation to run", required=True)
parser.add_argument("--config_file", type=str,
    help="configuration file for model training", required=True)
parser.add_argument("--platform", choices=["gpu", "cpu", "rdu"], type=str, help="name of the platform (cpu/gpu/rdu)", required=True)
parser.add_argument("--machine_name", type=str, help="name of the machine", required=True)
parser.add_argument("--n_gpus", type=int, help="number of GPUs", default=1)
parser.add_argument("--n_cpus", type=int, help="number of CPUs", default=1)
parser.add_argument("--n_epochs", type=int, help="number of epochs", default=10)
parser.add_argument("--batch_size", type=int, help="batch size", default=1024)

if __name__ == "__main__":
    # read the arguments
    args = parser.parse_args()

    # configuration file
    _CONFIG_FILE = args.config_file
    # check if configuration file exists
    assert os.path.exists(_CONFIG_FILE), "Configuration file not found: %s" %(_CONFIG_FILE)
    # read configuration file
    with open(_CONFIG_FILE) as fp:
        _CONFIG = json.load(fp)

    # initialize the framework
    framework = GPU(
        machine_name=args.machine_name,
        n_gpus=args.n_gpus,
        n_cpus=args.n_cpus,
        mgpu_strategy="HVD"
    )
    
    # select the interface
    interface = framework.use_pytorch()
    # init app
    cnn_app = CNNProxyApp()
    # init app manager
    interface.init_app_manager(
        app=cnn_app,
        app_name=_CONFIG["info"]["app_name"],
        output_dir=_CONFIG["info"]["output_dir"],
        mixed_precision_support=_CONFIG["info"]["mixed_precision_support"],
        mgpu_support=_CONFIG['info']["mgpu_support"]
    )
    # attrs = vars(interface.app_manager)
    # print(', '.join("%s: %s" % item for item in attrs.items()))
    # print(interface.config)
    # print(interface._MGPU_STRATEGY)
    # print(interface._MIXED_PRECISION)
    
    # initialize data manager
    interface.init_data_manager(
        training_data_dir=_CONFIG["data_params"]["training_data_dir"],
        input_file_format=_CONFIG["data_params"]["input_file_format"],
        data_type=_CONFIG["info"]["data_type"],
        dtype=_CONFIG["info"]["dtype"],
        n_training_files=_CONFIG["data_params"]["num_files"]
    )
    # attrs = vars(interface.data_manager)
    # print(', '.join("%s: %s" % item for item in attrs.items()))
    
    # load training and validation data
    training_data = interface.load_training_data(
        data_params=_CONFIG["data_params"],
        batch_size=args.batch_size,
        train_sampler=None
    )
    # attrs = vars(interface.data_manager.data_reader)
    # print(', '.join("%s: %s" % item for item in attrs.items()))    

    # train model
    interface.init_training_engine(
        model_name=_CONFIG["model_info"]["model_name"],
        model_parameters=_CONFIG["model_info"]["model_parameters"],
        opt_params=_CONFIG["model_info"]["opt_parameters"],
        criterion_params=None
    )
    interface.train(
        training_data=training_data,
        n_epochs=args.n_epochs
    )

    # # train model
    # framework.train(model, train_data)


    
