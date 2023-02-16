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
from proxy_apps.apps import GridLSTMProxyAppPT, GridCNNProxyAppPT, ClimateLSTMProxyAppPT, ClimateCNNProxyAppPT

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
    "--n_rdus", 
    type=int, 
    help="Number of RDUs to use", 
    default=1
)
# program changes required to support other floating type
parser.add_argument(
    "--dtype", 
    choices=["fp32"], 
    type=str, 
    help="Data type", 
    default="fp32"
)

parser.add_argument(
    "--n_epochs", 
    type=int, 
    help="number of epochs", 
    default=1
)
parser.add_argument(
    "--batch_size", 
    type=int, 
    help="batch size", 
    default=1024
)
parser.add_argument(
    "--run_type", 
    type=str, 
    choices=["compile", "run"], 
    help="action to take", 
    default="compile"
)
parser.add_argument(
    "--train_suffix", 
    type=str, 
    default=""
)
parser.add_argument(
    "--profiling", 
    type=int, 
    help="whether profiling or not using nsys", 
    default=0
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

    _PLATFORM = "rdu"
    _MACHINE_NAME = "sambanova"
    # for debugging
    _CONFIG["data_params"]["init"]["train_files"] = 10

    if args.train_suffix == "":
        _SUFFIX = f"%s_nr%d_e%d_b%d_d%s_prof%d" %(
            _PLATFORM,
            args.n_rdus,
            args.n_epochs,
            args.batch_size,
            args.dtype,
            args.profiling
        )
    else:
        _SUFFIX = args.train_suffix
    
    print("[INFO] Suffix: %s" %(_SUFFIX))

    # initialize the framework
    framework = RDU(
        machine_name=_MACHINE_NAME,
        dtype=args.dtype,
        n_rdus=args.n_rdus
    )

    # select the interface
    interface = framework.use_pytorch()
    # init app
    if _CONFIG["info"]["app_name"] == "ClimateLSTMProxyAppPT":
        app = ClimateLSTMProxyAppPT(_PLATFORM)
    elif _CONFIG["info"]["app_name"] == "ClimateCNNProxyAppPT":
        app = ClimateCNNProxyAppPT(_PLATFORM)
    elif _CONFIG["info"]["app_name"] == "GridLSTMProxyAppPT":
        app = GridLSTMProxyAppPT(_PLATFORM)
    elif _CONFIG["info"]["app_name"] == "GridCNNProxyAppPT":
        app = GridCNNProxyAppPT(_PLATFORM)
    
    # init app manager
    interface.init_app_manager(
        app=app,
        app_name=_CONFIG["info"]["app_name"],
        suffix=_SUFFIX,
        output_dir=_CONFIG["info"]["output_dir"],
        mixed_precision_support=_CONFIG["info"]["mixed_precision_support"],
        stage=args.run_type,
        batch_size=args.batch_size
    )
    
    # set parameters
    data_params = {
        "bw_size": _CONFIG["data_params"]["load_and_prep"]["iw_params"]["window_size"],
        "fw_size": _CONFIG["data_params"]["load_and_prep"]["ow_params"]["window_size"],
        "n_features": _CONFIG["data_params"]["load_and_prep"]["n_cols"] * _CONFIG["data_params"]["load_and_prep"]["repeat_cols"],
        "batch_size": args.batch_size
    }
    
    ### LOADING DATA LATER: because data only required for training and not for comilation however training engine initialization needed for both compilation and training
    # init training engine
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
    
    if args.run_type == "compile":
        # compile the model
        interface.compile(
            data_params=data_params,
            batch_size=args.batch_size
        )

    elif args.run_type == "run":
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
        # load training and validation data
        training_data = interface.load_data(
            data_files=data_manager._TRAIN_FILES,
            data_params=_CONFIG["data_params"]["load_and_prep"],
            batch_size=args.batch_size
        )
        # from torch.profiler import profile, record_function, ProfilerActivity

        # with profile(activities=[ProfilerActivity.CPU], profile_memory=True, record_shapes=True) as prof:
        #     with record_function("model_inference"):            
        interface.train(
            train_loader=training_data,
            data_params=data_params,
            n_epochs=args.n_epochs,
            batch_size=args.batch_size
        )

        # print(prof.key_averages().table(sort_by="cpu_time_total"))