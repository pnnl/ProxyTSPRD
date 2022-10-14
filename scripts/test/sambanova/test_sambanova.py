# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------
# Standard Libraries
import os
# os.environ['OMP_NUM_THREADS'] = '48'
import json
import argparse

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../../../')
from proxy_apps.framework.rdu import RDU
from proxy_apps.apps import LSTMProxyApp, CNNProxyApp

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------

# Parse Arguments
parser = argparse.ArgumentParser(description='Run Time Series Prediction')
# parser.add_argument("--model_name", choices=["Baseline", "TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc", "PyTorch", "PyTorchOpt"], type=str,
#     help="which implementation to run", required=True)
parser.add_argument(
    "--config_file", 
    type=str,
    help="configuration file for model training", 
    required=True
)
parser.add_argument(
    "--platform", 
    choices=["gpu", "cpu", "rdu"], 
    type=str, 
    help="name of the platform (cpu/gpu/rdu)", 
    required=True
)
parser.add_argument(
    "--machine_name", 
    type=str, 
    help="name of the machine", 
    required=True
)
parser.add_argument(
    "--n_epochs", 
    type=int, 
    help="number of epochs", 
    default=10
)
parser.add_argument(
    "--batch_size", 
    type=int, 
    help="batch size", 
    default=1024
)
parser.add_argument(
    "--refresh_pef_file", 
    action='store_true', 
    help="Whether to recreate the PEF file"
)

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
    framework = RDU(
        machine_name=args.machine_name,
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
        mixed_precision_support=_CONFIG["info"]["mixed_precision_support"]
    )
    
    # initialize data manager
    interface.init_data_manager(
        training_data_dir=_CONFIG["data_params"]["training_data_dir"],
        input_file_format=_CONFIG["data_params"]["input_file_format"],
        data_type=_CONFIG["info"]["data_type"],
        dtype=_CONFIG["info"]["dtype"],
        n_training_files=_CONFIG["data_params"]["num_files"]
    )
    # load training and validation data
    training_data = interface.load_training_data(
        data_params=_CONFIG["data_params"],
        batch_size=args.batch_size,
        train_sampler=None
    )
    
    # train model
    interface.init_training_engine(
        model_name=_CONFIG["model_info"]["model_name"],
        model_parameters=_CONFIG["model_info"]["model_parameters"],
        opt_params=_CONFIG["model_info"]["opt_parameters"],
        criterion_params=None,
        refresh_pef_file=args.refresh_pef_file
    )
    interface.train(
        train_loader=training_data,
        n_epochs=args.n_epochs
    )

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