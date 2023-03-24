# Standard Libraries
import os
import json

# Custom Imports
import sys
CURR_DIR = os.path.dirname(os.path.realpath(__file__))

# local import
from arg_parser import parse_arguments
# import proxytsprd
sys.path.append(os.path.join(CURR_DIR, '../../../'))
from proxy_apps.apps.utils import app_selector

if __name__ == "__main__":
    # read the arguments
    args = parse_arguments()
    
    # configuration file
    _CONFIG_FILE = args.config_file
    # check if configuration file exists
    assert os.path.exists(_CONFIG_FILE), "Configuration file not found: %s" %(_CONFIG_FILE)
    # read configuration file
    with open(_CONFIG_FILE) as fp:
        _CONFIG = json.load(fp)
    
    # only for testing
    _CONFIG["data_params"]["init"]["train_files"] = 16

    # enable mixed precision
    _mixed_precision = False
    if args.dtype == "amp":
        _mixed_precision = True

    # mgpu support
    _mgpu_strategy = None
    if args.mgpu_strategy != "None":
        _mgpu_strategy = args.mgpu_strategy


    # get app
    n_channels = 1
    app = app_selector(_CONFIG["info"]["app_name"], args.platform)
    
    # suffix 
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
    if args.platform == "gpu":
        from proxy_apps.framework.gpu import GPU
        framework = GPU(
            machine_name=args.machine_name,
            n_gpus=args.n_gpus,
            n_cpus=args.n_cpus,
            mgpu_strategy=_mgpu_strategy,
            mixed_precision=_mixed_precision,
            dtype=args.dtype
        )
    elif args.platform == "rdu":
        from proxy_apps.framework.rdu import RDU
        framework = RDU(
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
        batch_size=args.batch_size
    )
    
    # load test data
    test_data = interface.load_data(
        data_files=data_manager._TEST_FILES,
        data_params=_CONFIG["data_params"]["load_and_prep"],
        sampler=None,
        batch_size=args.batch_size
    )
    
    # set parameters
    data_params = {
        "bw_size": _CONFIG["data_params"]["load_and_prep"]["iw_params"]["window_size"],
        "fw_size": _CONFIG["data_params"]["load_and_prep"]["ow_params"]["window_size"],
        "n_features": _CONFIG["data_params"]["load_and_prep"]["n_cols"] * _CONFIG["data_params"]["load_and_prep"]["repeat_cols"],
        "batch_size": args.batch_size,
        "n_channels": n_channels
    }
    
    model_exists = interface.init_training_engine(
        model_name=_SUFFIX,
        model_dir=os.path.join(
                    _CONFIG["model_info"]["model_dir"],
                    _CONFIG["info"]["app_name"]
                ),
        data_params=data_params,
        opt_params=_CONFIG["model_info"]["opt_parameters"],
        criterion_params=None,
        batch_size=args.batch_size
    )
    
    # train model
    interface.train(
        training_data=training_data,
        n_epochs=args.n_epochs
    )
    
    # inference
    interface.infer(
        data=test_data,
        batch_size=args.batch_size
    )
    interface.close()