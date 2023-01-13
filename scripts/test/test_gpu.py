# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------
# Standard Libraries
import os
# os.environ['OMP_NUM_THREADS'] = '48'
import json
import argparse

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../../')
from proxy_apps.framework.gpu import GPU
from proxy_apps.apps import *

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------

# Parse Arguments
parser = argparse.ArgumentParser(description='Run Time Series Prediction')
parser.add_argument("--config_file", type=str,
    help="configuration file for model training", required=True)
parser.add_argument("--platform", choices=["gpu", "cpu", "rdu"], type=str, help="name of the platform (cpu/gpu/rdu)", required=True)
parser.add_argument("--machine_name", type=str, help="name of the machine", required=True)
parser.add_argument("--n_gpus", type=int, help="number of GPUs", default=1)
parser.add_argument("--n_cpus", type=int, help="number of CPUs", default=1)
parser.add_argument("--dtype", choices=["int", "fp16", "fp32", "fp64", "amp"], type=str, help="Data type", default="fp64")
parser.add_argument("--mgpu_strategy", choices=["HVD", "DDP", "None"], type=str, help="MGPU strategy", default=None)
parser.add_argument("--n_epochs", type=int, help="number of epochs", default=20)
parser.add_argument("--batch_size", type=int, help="batch size", default=1024)
parser.add_argument("--profiling", type=int, help="whether profiling or not using nsys", default=0)
parser.add_argument("--run_type", type=str, help="train or infer")

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

    # enable mixed precision
    _mixed_precision = False
    if args.dtype == "amp":
        _mixed_precision = True

    # mgpu support
    _mgpu_strategy = None
    if args.mgpu_strategy != "None":
        _mgpu_strategy = args.mgpu_strategy


    # get app
    if _CONFIG["info"]["app_name"] == "ClimateLSTMProxyAppPT":
        app = ClimateLSTMProxyAppPT(args.platform)
    elif _CONFIG["info"]["app_name"] == "ClimateCNNProxyAppPT":
        app = ClimateCNNProxyAppPT(args.platform)
    elif _CONFIG["info"]["app_name"] == "ClimateCNNProxyAppTF":
        app = ClimateCNNProxyAppTF(args.platform)
    elif _CONFIG["info"]["app_name"] == "GridLSTMProxyAppPT":
        app = GridLSTMProxyAppPT(args.platform)
    elif _CONFIG["info"]["app_name"] == "GridCNNProxyAppPT":
        app = GridCNNProxyAppPT(args.platform)
    else:
        sys.exit("[ERROR] Invalid App: %s" %(_CONFIG["info"]["app_name"]))

    # suffix 
    # print(
    #     type(args.platform),
    #     type(args.n_gpus),
    #     type(args.n_cpus),
    #     type(args.n_epochs),
    #     type(args.batch_size),
    #     type(args.dtype),
    #     type(_mgpu_strategy),
    #     type(args.profiling)
    # )
    _SUFFIX = f"%s_ng%d_nc%d_e%d_b%d_d%s_mpgu%s_prof%d" %(
        args.platform,
        args.n_gpus,
        args.n_cpus,
        args.n_epochs,
        args.batch_size,
        args.dtype,
        _mgpu_strategy,
        args.profiling
    )
    print("[INFO] Suffix: %s" %(_SUFFIX))
    
    # initialize the framework
    framework = GPU(
        machine_name=args.machine_name,
        n_gpus=args.n_gpus,
        n_cpus=args.n_cpus,
        mgpu_strategy=_mgpu_strategy,
        mixed_precision=_mixed_precision,
        dtype=args.dtype
    )
    
    # select the interface
    if app._FRAMEWORK == "TF":
        interface = framework.use_tensorflow()
    elif app._FRAMEWORK == "PT":
        interface = framework.use_pytorch()

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
    
    # load training data
    training_data = interface.load_data(
        data_files=data_manager._TRAIN_FILES,
        data_params=_CONFIG["data_params"]["load_and_prep"],
        sampler=None,
        batch_size=args.batch_size
    )
    train_iter = iter(training_data)
    print(next(train_iter).numpy())
    
    # load test data
    test_data = interface.load_data(
        data_files=data_manager._TEST_FILES,
        data_params=_CONFIG["data_params"]["load_and_prep"],
        sampler=None,
        batch_size=args.batch_size
    )
    test_iter = iter(test_data)
    print(next(test_iter).numpy())
    sys.exit(1)
    
    # train model
    data_params = {
        "bw_size": _CONFIG["data_params"]["load_and_prep"]["iw_params"]["window_size"],
        "fw_size": _CONFIG["data_params"]["load_and_prep"]["ow_params"]["window_size"],
        "n_features": _CONFIG["data_params"]["load_and_prep"]["n_cols"] * _CONFIG["data_params"]["load_and_prep"]["repeat_cols"]
    }
    interface.init_training_engine(
        model_name=_SUFFIX,
        model_dir=os.path.join(
                    _CONFIG["model_info"]["model_dir"],
                    _CONFIG["info"]["app_name"]
                ),
        data_params=data_params,
        opt_params=_CONFIG["model_info"]["opt_parameters"],
        criterion_params=None
    )
    interface.train(
        training_data=training_data,
        n_epochs=args.n_epochs
    )

    # # inference
    # interface.infer(
    #     data=test_data
    # )

    # # train model
    # framework.train(model, train_data)


    
