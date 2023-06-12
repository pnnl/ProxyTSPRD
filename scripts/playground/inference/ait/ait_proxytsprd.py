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
from proxy_apps.framework.gpu import GPU
from proxy_apps.apps import ClimateCNNProxyAppPT

# Parse Arguments
parser = argparse.ArgumentParser(description='Run Time Series Prediction')
parser.add_argument(
    "--config_file", 
    type=str,
    help="configuration file for model training", 
    required=True
)
parser.add_argument(
    "--platform", 
    type=str, 
    choices=["gpu", "cpu", "rdu"], 
    help="name of the platform (cpu/gpu/rdu)", 
    required=True
)
parser.add_argument(
    "--machine_name", 
    type=str, 
    help="name of the machine", 
    required=True
)
parser.add_argument("--n_gpus", type=int, help="number of GPUs", default=1)
parser.add_argument("--n_cpus", type=int, help="number of CPUs", default=1)
parser.add_argument("--dtype", choices=["int", "fp16", "fp32", "fp64", "amp"], type=str, help="Data type", default="fp64")
parser.add_argument("--n_epochs", type=int, help="number of epochs", default=20)
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
        dtype=args.dtype
    )
    
    # select the interface
    interface = framework.use_pytorch()
    # init app
    app = ClimateCNNProxyAppPT(args.platform)

    # init app manager
    interface.init_app_manager(
        app=app,
        app_name=_CONFIG["info"]["app_name"],
        output_dir=_CONFIG["info"]["output_dir"],
        mixed_precision_support=_CONFIG["info"]["mixed_precision_support"],
        mgpu_support=_CONFIG['info']["mgpu_support"]
    )

    # initialize data manager
    data_manager = interface.init_data_manager(
        data_dir=_CONFIG["data_params"]["init"]["training_data_dir"],
        file_format=_CONFIG["data_params"]["init"]["file_format"],
        data_manager_type=_CONFIG["info"]["data_manager"],
        train_files=_CONFIG["data_params"]["init"]["train_files"],
        test_files=_CONFIG["data_params"]["init"]["test_files"],
        val_files=_CONFIG["data_params"]["init"]["val_files"],
        shuffle=_CONFIG["data_params"]["init"]["shuffle"]
    )
    
    # load test data
    test_data = interface.load_data(
        data_files=data_manager._TEST_FILES,
        data_params=_CONFIG["data_params"]["load_and_prep"],
        sampler=None,
        batch_size=args.batch_size
    )
    
    # train model
    data_params = {
        "bw_size": _CONFIG["data_params"]["load_and_prep"]["iw_params"]["window_size"],
        "fw_size": _CONFIG["data_params"]["load_and_prep"]["ow_params"]["window_size"],
        "n_features": _CONFIG["data_params"]["load_and_prep"]["n_cols"] * _CONFIG["data_params"]["load_and_prep"]["repeat_cols"]
    }
    interface.init_training_engine(
        model_name="_x",
        model_dir=os.path.join(
                    _CONFIG["model_info"]["model_dir"],
                    _CONFIG["info"]["app_name"]
                ),
        data_params=data_params,
        opt_params=_CONFIG["model_info"]["opt_parameters"],
        criterion_params=None
    )
    
    # inference
    interface.infer(
        data=test_data,
        data_params=data_params,
        batch_size=args.batch_size,
        ait=False,
        device=None
    )
    
    
    