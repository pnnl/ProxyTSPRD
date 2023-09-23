# ------------------------------- IMPORT MODULES & SETUP ------------------------------------------------
# Standard Libraries
import os, re
import sys
import numpy as np

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
        if (infer_through == "onnxi8") and ("CNN" in _CONFIG["info"]["app_name"]):
            raise NotImplementedError("ONNX quant not supported for CNN models")

    else: # standard inference
        infer_through = ""
        
    # specific for inference
    if re.match("infer.*", args.run_type):
        _CONFIG["data_params"]["init"]["shuffle"] = False
        n_files = _CONFIG["data_params"]["init"]["train_files"] + _CONFIG["data_params"]["init"]["test_files"]
        # increase number of test files for inference - climate data
        if _CONFIG["info"]["app_name"].startswith("Climate"):
            _CONFIG["data_params"]["init"]["test_files"] = 240 # 240 (for lstm and cnn) - CUDA OOM for STGCN at 240 which was used for lstm and cnn
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

    # print(interface._DEVICE_STR)
    # if interface._DEVICE_STR == "cpu":
    #     _SUFFIX = _SUFFIX.replace("gpu", "cpu")
    if _MPI_RANK == 0:
        print("[INFO] Suffix: %s" %(_SUFFIX))
    
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
    if args.run_type in ["infer_onnx", "infer_onnxfp16", "infer_onnxi8", "infer_onnxtrtfp16", "infer_onnxtrti8"]:
        model_name=_SUFFIX
        model_dir=os.path.join(
                    _CONFIG["model_info"]["model_dir"],
                    _CONFIG["info"]["app_name"]
                )
        # providers
        providers = ['CPUExecutionProvider']
        if interface._DEVICE_STR == "cuda":
            providers = ['CUDAExecutionProvider']
        print("[INFO (ONNX)] Providers:", providers)
        _CALIBRATE_MODEL = False # Required for quantization    
        onnx_model = os.path.join(model_dir, "onnx_models/" + model_name + ".onnx")
        if args.run_type == "infer_onnxfp16":
            # convert to fp16
            import onnx
            from onnxconverter_common import float16
            loaded_model = onnx.load(onnx_model)
            # fp16 model
            fp16_model = float16.convert_float_to_float16(loaded_model)
            onnx_model = onnx_model.replace(".onnx", ".fp16.onnx")
            onnx.save(fp16_model, onnx_model)
        elif args.run_type == "infer_onnxi8":
            # quantize the model
            import onnx
            from onnxruntime.quantization import quantize_dynamic
            loaded_model = onnx_model
            onnx_model = onnx_model.replace(".onnx", ".quant.onnx")
            _CALIBRATE_MODEL = True
        elif args.run_type == "infer_onnxtrtfp16":
            os.environ["CUDA_MODULE_LOADING"] = "LAZY"
            providers = [
                ('TensorrtExecutionProvider', {
                    # 'device_id': 0,
                    'trt_max_workspace_size': 2147483648,
                    'trt_fp16_enable': True,
                    "trt_timing_cache_enable": True,
                    'trt_engine_cache_enable':True,
                    'trt_context_memory_sharing_enable': True
                }),
                providers[-1]
            ]
        elif args.run_type == "infer_onnxtrti8":
            os.environ["CUDA_MODULE_LOADING"] = "LAZY"
            _CALIBRATE_MODEL = True
            providers = [
                ('TensorrtExecutionProvider', {
                    # 'device_id': 0,
                    'trt_max_workspace_size': 2147483648,
                    'trt_fp16_enable': False,
                    "trt_timing_cache_enable": True,
                    'trt_engine_cache_enable':True,
                    # 'trt_engine_cache_path':'./trt_cache'
                    'trt_int8_enable': True,
                    'trt_int8_calibration_table_name': "calibration.flatbuffers"
                }),
                providers[-1]
            ]
        
        if os.path.exists(onnx_model):
            if ml_framework == "PT":
                inp_dkey = "input"
                out_dkey = "output"
            else:
                inp_dkey = "input_1"
                out_dkey = "output_1"
            
            if _CALIBRATE_MODEL:
                from onnxruntime.quantization import CalibrationDataReader, create_calibrator, write_calibration_table
                class Calibrator(CalibrationDataReader):
                    def __init__(self, datareader):
                        self.batch_size = 1
                        data = []
                        for d in datareader:
                            data.append({inp_dkey: d[0].numpy()})
                        
                        self.data = iter(data)
                        self.start_index = 0
                        self.end_index  = 1

                    def get_next(self):
                        if self.start_index < self.end_index:
                            return next(self.data, None)
                        else:
                            return None
                    
                    def get_batch_size(self):
                        return self.batch_size
                    
                calibrator_data = Calibrator(test_data)
                augmented_modelpath = "./augmented_model.onnx"
                calibrator = create_calibrator(onnx_model, [], augmented_model_path=augmented_modelpath)
                calibrator.collect_data(calibrator_data)
                write_calibration_table(calibrator.compute_range())
            
            import onnxruntime
            
            # session options
            so = onnxruntime.SessionOptions()
            so.graph_optimization_level = onnxruntime.GraphOptimizationLevel.ORT_ENABLE_ALL
            so.intra_op_num_threads = 64
            if _MPI_RANK == 0:
                print("[INFO (ONNX)] ONNX Model: %s" %(onnx_model))
            
            # create session
            interface.sess = onnxruntime.InferenceSession(onnx_model, so, providers=providers)
            if _MPI_RANK == 0:
                print("[INFO (ONNX)] ORT Device:", onnxruntime.get_device())
            
            # warmup run
            random_input = np.random.randn(
                args.batch_size, model_params["bw_size"], model_params["n_features"]
            ).astype(interface._DTYPE)
            input_data = {inp_dkey: random_input}
            output = [out_dkey]
            y_onnx = interface.sess.run(output, input_data)
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
    if re.match("infer.*", args.run_type):
        if not model_exists:
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
        data_params=model_params,
        infer_through=infer_through,
        batch_size=args.batch_size,
        graphloader=g_test
    )
    interface.close()