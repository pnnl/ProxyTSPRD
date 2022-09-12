# python app.py --config_file config_baseline.json --framework TF --machine a100_shared --n_gpus 1 --n_epochs 2 --batch_size 64 --mixed_precision 0
# python app.py --config_file config_tfdataopt.json --framework TF --machine a100_shared --n_gpus 1 --n_epochs 2 --batch_size 64 --mixed_precision 1
# python app.py --config_file config_resnet.json --framework TF --machine a100_shared --n_gpus 1 --n_epochs 2 --batch_size 64 --mixed_precision 0
# 
#SBATCH --exclusive


# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------
# Standard Libraries
import os
import time
import math
import json
import datetime
import time
import argparse

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')

from proxy_apps import ProxyTSPRD
from proxy_apps.utils import file_reader

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------
_REF_DIR = './'

# Parse Arguments
parser = argparse.ArgumentParser(description='Run Time Series Prediction')
parser.add_argument("--config_file", type=str, help="which implementation to run", required=True)
parser.add_argument("--framework", choices=["TF", "PT"], help="frameworks to run on", default="TF")
parser.add_argument("--machine_name", choices=["a100", "a100_shared", "tonga"], type=str, help="name of the machine", default="a100_shared")
parser.add_argument("--n_gpus", type=int, help="number of GPUs", default=1)
parser.add_argument("--n_cpus", type=int, help="number of CPUs", default=1)
parser.add_argument("--n_epochs", type=int, help="number of epochs", default=10)
parser.add_argument("--batch_size", type=int, help="batch size", default=1024)
parser.add_argument("--mixed_precision", type=int, choices=[0, 1], help="whether to turn on mixed precision or not", default=0)
parser.add_argument("--mgpu_strategy", choices=["None", "MirroredStrategy", "DDP", "HVD"], help="which multi-gpu strategy to use", default="None")
parser.add_argument("--profiling", type=int, choices=[0, 1], help="whether to use nsys profiling", default=0)
parser.add_argument("--run_type", choices=["train", "eval"], help="whether to train the model or do inference from the trained model", default="train")

args = parser.parse_args()
print("[INFO] Read parser arguments")

## ProxyTSPRD
# get configuration file
_CONFIG_FILE = "./configs/config_" + args.config_file + ".json"
config = file_reader.read_config(_REF_DIR + _CONFIG_FILE)
_FRAMEWORK = args.framework

# initialize the interface
_MIXED_PRECISION = args.mixed_precision

_MACHINE_NAME = args.machine_name
_N_GPUS = args.n_gpus
_N_CPUS = args.n_cpus

# train the network
_N_EPOCHS = args.n_epochs
_BATCH_SIZE = args.batch_size

_MGPU_STRATEGY = args.mgpu_strategy
_PROFILING = args.profiling

if _MGPU_STRATEGY == "None": _MGPU_STRATEGY = None

start_time = time.perf_counter()

interface = ProxyTSPRD(config["info"], 
                       _FRAMEWORK, 
                       _REF_DIR, 
                       _MIXED_PRECISION, 
                       _MACHINE_NAME, 
                       _N_GPUS, 
                       _N_CPUS,
                       _N_EPOCHS, 
                       _BATCH_SIZE, 
                       _MGPU_STRATEGY,
                       _PROFILING
                      )
end_time = time.perf_counter()
print("====> Initialization Time: ", end_time-start_time)

# load data
start_time = time.perf_counter()

training_data_dict = interface.load_data(
    config['data_params']
)


end_time = time.perf_counter()
print("====> Data Loading Time: ", end_time-start_time)

if args.run_type == "train":
    # model training
    start_time = time.perf_counter()
    interface.train_model(
        config['model_info'], 
        training_data_dict
    )
    end_time = time.perf_counter()
    print("====> Model Training Time: ", end_time-start_time)
else:
    # inference
    start_time = time.perf_counter()
    interface.eval_model(
        config['model_info'], 
        training_data_dict
    )
    end_time = time.perf_counter()
    print("====> Model Training Time: ", end_time-start_time)