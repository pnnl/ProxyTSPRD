# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------
# Standard Libraries
import os
import sys

# ------------------------------- CUSTOM FUNCTIONS ------------------------------------------------
# Custom Library
CURR_DIR = os.path.dirname(os.path.realpath(__file__))
sys.path.append(os.path.join(CURR_DIR, '../'))
from app_utils import argument_parser, read_config, app_selector

if __name__ == "__main__":
    # parse arguments
    args = argument_parser()
    
    # configuration file
    _CONFIG, _MPI_RANK = read_config(args.config_file)
    
    # inference type
    run_type = args.run_type.split("_")
    if len(run_type) > 1: # using source-to-source transformation: onnx or ait
        infer_through = run_type[1]
    else: # standard inference
        infer_through = None
        
    # specific for inference
    if args.run_type in ["infer", "infer_ait", "infer_onnx"]:
        _CONFIG["data_params"]["init"]["shuffle"] = False
        n_files = _CONFIG["data_params"]["init"]["train_files"] + _CONFIG["data_params"]["init"]["test_files"]
        # increase number of test files for inference - climate data
        if _CONFIG["info"]["app_name"].startswith("Climate"):
            _CONFIG["data_params"]["init"]["test_files"] = 240
        # increase number of test files for inference - grid data
        elif _CONFIG["info"]["app_name"].startswith("Grid"):
            _CONFIG["data_params"]["init"]["test_files"] = 140
        # reduce number of training files accordingly 
        _CONFIG["data_params"]["init"]["train_files"] = n_files - _CONFIG["data_params"]["init"]["test_files"]
        if _MPI_RANK == 0:
            print("[INFO] Number of files updated:", _CONFIG["data_params"]["init"])

    # enable mixed precision
    _mixed_precision = False
    if args.dtype == "amp":
        _mixed_precision = True

    # mgpu support
    _mgpu_strategy = None
    if args.mgpu_strategy != "None":
        _mgpu_strategy = args.mgpu_strategy

    # [SAMBANOVA] train suffix can only be used for inference
    if args.run_type in ["train", "compile", "run"]:
        args.train_suffix = "None"
        if _MPI_RANK == 0:
            print("[WARNING] Train suffix can only be used for inference")
    
    # train suffix
    if args.train_suffix == "None":
        _SUFFIX = f"%s_ng%d_nc%d_e%d_b%d_d%s_mpgu%s_prof%d" %(
            args.platform,
            args.n_units,
            args.n_cpus,
            args.n_epochs,
            args.batch_size,
            args.dtype,
            _mgpu_strategy,
            args.profiling
        )
    # for inference
    else:
        _SUFFIX = args.train_suffix
    if _MPI_RANK == 0:
        print("[INFO] Suffix: %s" %(_SUFFIX))
    
    # initialize the framework
    # GPU
    if args.platform == "gpu":
        from proxy_apps.framework.gpu import GPU
        framework = GPU(
            machine_name=args.machine_name,
            n_gpus=args.n_units,
            n_cpus=args.n_cpus,
            mgpu_strategy=_mgpu_strategy,
            mixed_precision=_mixed_precision,
            dtype=args.dtype,
            mpi_rank=_MPI_RANK
        )
    # RDU - Sambanova
    elif args.platform == "rdu":
        from proxy_apps.framework.rdu import RDU
        framework = RDU(
            machine_name=args.machine_name,
            dtype=args.dtype,
            n_rdus=args.n_units
        )
    
    # select the interface
    ml_framework = _CONFIG["info"]["app_name"].split("App")[1][:2]
    # FIXME: The framework name should come from app or we should add it in the configuration file. This is buggy.
    if ml_framework == "TF":
        if args.platform == "rdu":
            raise NotImplementedError("TensorFlow is not yet supported on Sambanova.")
        else:
            interface = framework.use_tensorflow()
    elif ml_framework == "PT":
        interface = framework.use_pytorch()

    # select app
    # FIXME: App can only be loaded after initializing the framework, otherwise memory set won't happen. 
    app, n_channels = app_selector(_CONFIG["info"]["app_name"], args.platform)

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
        training_data, g_train = interface.load_data(
            data_files=data_manager._TRAIN_FILES,
            data_params=_CONFIG["data_params"]["load_and_prep"],
            batch_size=args.batch_size
        )
    
    # load test data
    test_data, g_test = interface.load_data(
        data_files=data_manager._TEST_FILES,
        data_params=_CONFIG["data_params"]["load_and_prep"],
        sampler=None,
        batch_size=args.batch_size
    )
    
    # set parameters
    model_params = {
        "bw_size": _CONFIG["data_params"]["load_and_prep"]["iw_params"]["window_size"],
        "fw_size": _CONFIG["data_params"]["load_and_prep"]["ow_params"]["window_size"],
        "n_features": _CONFIG["data_params"]["load_and_prep"]["n_cols"] * _CONFIG["data_params"]["load_and_prep"]["repeat_cols"],
        "batch_size": args.batch_size,
        "n_channels": n_channels
    }
    if "other" in _CONFIG["model_info"]:
        model_params["other"] = _CONFIG["model_info"]["other"]
    
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
            if _MPI_RANK == 0:
                print("[INFO ONNX] ONNX Model: %s" %(onnx_model))
            so.intra_op_num_threads = 64
            interface.sess = onnxruntime.InferenceSession(onnx_model, so, providers=['CUDAExecutionProvider'])
            if _MPI_RANK == 0:
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
            model_params=model_params,
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
            n_epochs=args.n_epochs,
            graphloader=g_train
        )
    
    # inference
    interface.infer(
        data=test_data,
        infer_through=infer_through,
        batch_size=args.batch_size,
        graphloader=g_test
    )
    interface.close()