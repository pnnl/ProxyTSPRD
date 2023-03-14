# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------
# Standard Libraries
import os
# os.environ['OMP_NUM_THREADS'] = '48'
import json
import argparse

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
import sys
sys.path.append('../')

# ------------------------------- PATH & LOGGER SETUP ------------------------------------------------

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
    "--n_units", 
    type=int, help="number of GPUs/RDUs", 
    default=1
)
parser.add_argument(
    "--n_cpus", 
    type=int, 
    help="number of CPUs, invalid for RDUs", 
    default=1
)
parser.add_argument(
    "--dtype", 
    choices=["int", "fp16", "amp", "fp32", "fp64"], 
    type=str, 
    help="Data type", 
    default="fp64"
)
parser.add_argument(
    "--mgpu_strategy", 
    choices=["HVD", "DDP", "None"], 
    type=str, 
    help="MGPU strategy", 
    default=None
)
parser.add_argument(
    "--n_epochs", 
    type=int, 
    help="number of epochs", 
    default=20
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
    choices=["train", "infer", "infer_ait", "infer_onnx", "compile", "run"], 
    help="Action to take. compile and run commands are specific to sambanova.", 
    default="train"
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
parser.add_argument(
    "--write_graph", 
    action='store_true',
    help="Invalid for sambanova"
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
    
    # inference type
    run_type = args.run_type.split("_")
    if len(run_type) > 1:
        infer_through = run_type[1]
    else:
        infer_through = None
        
    _CONFIG["data_params"]["init"]["train_files"] = 2
    # specific for inference
    if args.run_type in ["infer", "infer_ait", "infer_onnx"]:
        args.n_units = args.n_units# * 8
        _CONFIG["data_params"]["init"]["shuffle"] = False
        n_files = _CONFIG["data_params"]["init"]["train_files"] + _CONFIG["data_params"]["init"]["test_files"]
        if _CONFIG["info"]["app_name"].startswith("Climate"):
            _CONFIG["data_params"]["init"]["test_files"] = 240
        elif _CONFIG["info"]["app_name"].startswith("Grid"):
            _CONFIG["data_params"]["init"]["test_files"] = 140
        _CONFIG["data_params"]["init"]["train_files"] = n_files - _CONFIG["data_params"]["init"]["test_files"]
        print(_CONFIG["data_params"]["init"])

    # enable mixed precision
    _mixed_precision = False
    if args.dtype == "amp":
        _mixed_precision = True

    # mgpu support
    _mgpu_strategy = None
    if args.mgpu_strategy != "None":
        _mgpu_strategy = args.mgpu_strategy

    # select app
    n_channels = 1
    if _CONFIG["info"]["app_name"] == "ClimateLSTMProxyAppPT":
        from proxy_apps.apps.climate_prediction.climate_ptapp import ClimateLSTMProxyAppPT
        app = ClimateLSTMProxyAppPT(args.platform)
    elif _CONFIG["info"]["app_name"] == "ClimateLSTMProxyAppTF":
        from proxy_apps.apps.climate_prediction.climate_tfapp import ClimateLSTMProxyAppTF
        app = ClimateLSTMProxyAppTF(args.platform)
    elif _CONFIG["info"]["app_name"] == "ClimateCNNProxyAppPT":
        from proxy_apps.apps.climate_prediction.climate_ptapp import ClimateCNNProxyAppPT
        app = ClimateCNNProxyAppPT(args.platform)
    elif _CONFIG["info"]["app_name"] == "ClimateCNNProxyAppPTATT":
        from proxy_apps.apps.climate_prediction.climate_ptapp import ClimateCNNProxyAppPTATT
        app = ClimateCNNProxyAppPTATT(args.platform)
        n_channels = 4
    elif _CONFIG["info"]["app_name"] == "ClimateCNNProxyAppTF":
        from proxy_apps.apps.climate_prediction.climate_tfapp import ClimateCNNProxyAppTF
        app = ClimateCNNProxyAppTF(args.platform)
    elif _CONFIG["info"]["app_name"] == "GridLSTMProxyAppPT":
        from proxy_apps.apps.grid_prediction.grid_ptapp import GridLSTMProxyAppPT
        app = GridLSTMProxyAppPT(args.platform)
    elif _CONFIG["info"]["app_name"] == "GridLSTMProxyAppTF":
        from proxy_apps.apps.grid_prediction.grid_tfapp import GridLSTMProxyAppTF
        app = GridLSTMProxyAppTF(args.platform)
    elif _CONFIG["info"]["app_name"] == "GridCNNProxyAppPT":
        from proxy_apps.apps.grid_prediction.grid_ptapp import GridCNNProxyAppPT
        app = GridCNNProxyAppPT(args.platform)
    elif _CONFIG["info"]["app_name"] == "GridCNNProxyAppPTATT":
        from proxy_apps.apps.grid_prediction.grid_ptapp import GridCNNProxyAppPTATT
        app = GridCNNProxyAppPTATT(args.platform)
        n_channels = 4
    elif _CONFIG["info"]["app_name"] == "GridCNNProxyAppTF":
        from proxy_apps.apps.grid_prediction.grid_tfapp import GridCNNProxyAppTF
        app = GridCNNProxyAppTF(args.platform)
    else:
        sys.exit("[ERROR] Invalid App: %s" %(_CONFIG["info"]["app_name"]))

    # train suffix can only be used for inference
    if args.run_type in ["train", "compile", "run"]:
        args.train_suffix = ""
        print("[WARNING] Train suffix can only be used for inference")
    
    # train suffix
    if args.train_suffix == "":
        _SUFFIX = f"%s_nu%d_nc%d_e%d_b%d_d%s_mpgu%s_prof%d" %(
            args.platform,
            args.n_units,
            args.n_cpus,
            args.n_epochs,
            args.batch_size,
            args.dtype,
            _mgpu_strategy,
            args.profiling
        )
    else:
        _SUFFIX = args.train_suffix
    
    print("[INFO] Suffix: %s" %(_SUFFIX))
    # sys.exit(1)
    
    # initialize the framework
    if args.platform == "gpu":
        from proxy_apps.framework.gpu import GPU
        framework = GPU(
            machine_name=args.machine_name,
            n_gpus=args.n_units,
            n_cpus=args.n_cpus,
            mgpu_strategy=_mgpu_strategy,
            mixed_precision=_mixed_precision,
            dtype=args.dtype
        )
    elif args.platform == "rdu":
        from proxy_apps.framework.rdu import RDU
        framework = RDU(
            machine_name=args.machine_name,
            dtype=args.dtype,
            n_rdus=args.n_units
        )
    
    # select the interface
    if app._FRAMEWORK == "TF":
        if args.platform == "rdu":
            raise NotImplementedError("TensorFlow is not yet supported on Sambanova.")
        else:
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
    
    if args.run_type == "train":
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
    
    # check onnx model
    model_exists = False
    if args.run_type in ["infer_onnx"]:
        model_name=_SUFFIX
        model_dir=os.path.join(
                    _CONFIG["model_info"]["model_dir"],
                    _CONFIG["info"]["app_name"]
                )
        onnx_model = os.path.join(model_dir, "onnx_models/" + model_name + ".onnx")
        if os.path.exists(onnx_model):
            import onnxruntime
            so = onnxruntime.SessionOptions()
            so.graph_optimization_level = onnxruntime.GraphOptimizationLevel.ORT_ENABLE_ALL
            print("[INFO ONNX] ONNX Model: %s" %(onnx_model))
            so.intra_op_num_threads = 64
            interface.sess = onnxruntime.InferenceSession(onnx_model, so, providers=['CUDAExecutionProvider'])
            print(onnxruntime.get_device())
            # print("Did I create the inference session?")
            model_exists = True
    
    # if onnx model doesn't exist
    if not model_exists:
        model_exists = interface.init_training_engine(
            model_name=_SUFFIX,
            model_dir=os.path.join(
                        _CONFIG["model_info"]["model_dir"],
                        _CONFIG["info"]["app_name"]
                    ),
            data_params=data_params,
            opt_params=_CONFIG["model_info"]["opt_parameters"],
            criterion_params=None,
            infer_through=infer_through,
            batch_size=args.batch_size
        )
    # infer only if model exists
    if (args.run_type in ["sinfer", "infer", "infer_ait", "infer_onnx"]) & (not model_exists):
        sys.exit("[ERROR] Cannot infer without trained model.")
    
    # model training
    if args.run_type == "train":
        interface.train(
            training_data=training_data,
            n_epochs=args.n_epochs
        )
    
    # inference
    interface.infer(
        data=test_data,
        infer_through=infer_through,
        batch_size=args.batch_size
    )
    interface.close()