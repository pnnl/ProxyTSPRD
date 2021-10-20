import os
import time

from numba import jit

from .tensorflow_interface import TFInterface
from .pytorch_interface import PyTorchInterface

from .utils import file_reader, path_handler
from .utils.data.main import DataHandler

from .apps.timeseries_prediction import hyperparameters

class ProxyTSPRD:
    def __init__(self, app_info, reference_dir, mixed_precision, machine_name, n_gpus, mgpu_strategy=None):
        # initialize
        self._REF_DIR = reference_dir
        
        self._APP_NAME = app_info["app_name"]
        self._FRAMEWORK = app_info["framework"]
        
        # mixed precision
        self._MIXED_PRECISION_SUPPORT = app_info["mixed_precision_support"]
        self._MIXED_PRECISION = mixed_precision
        if self._MIXED_PRECISION:
            if self._MIXED_PRECISION_SUPPORT == "False": 
                print("[WARNING] Mixed precision was enabled, however, the model (%s) does not support mixed precision. Therefore, disabling mixed precision for this run." %(self._APP_NAME))
                self._MIXED_PRECISION = 0
        
        # multiple gpu
        self._MGPU_SUPPORT = app_info["mgpu_support"]
        self._MACHINE_NAME = machine_name
        self._N_GPUS = n_gpus
        self._MGPU_STRATEGY = mgpu_strategy
        
        if self._MGPU_SUPPORT == "False":
            print("[WARNING] %s was enabled and the execution is using %d GPUs, however, the model (%s) does not support distributed training. Therefore, using only one GPU without distributed training." %(self._MGPU_STRATEGY, self._N_GPUS, self._APP_NAME))
            self._N_GPUS = 1
            self._MGPU_STRATEGY = None
            os.environ['CUDA_VISIBLE_DEVICES'] = "0"
        else:
            if self._MGPU_STRATEGY is None:
                if self._N_GPUS > 1:
                    print("[WARNING] The execution is using %d GPUs, however, no distributed training strategy was specified." %(self._N_GPUS))
                        
        # set environment variables
        if self._FRAMEWORK == "TF":
            os.environ['TF_XLA_FLAGS']="--tf_xla_auto_jit=2 --tf_xla_cpu_global_jit"
            os.environ['XLA_FLAGS']="--xla_gpu_cuda_data_dir=/share/apps/cuda/11.0/"
            os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"  # to avoid gpu contention
            # os.environ['TF_CUDNN_DETERMINISTIC']='1'
        
        os.environ['CUDA_DEVICE_ORDER'] = "PCI_BUS_ID"
        
        # output
        self.performance_dict = dict()
            
    def load_data(self, data_params):
        # training data
        data_params["training_data_dir"] = path_handler.get_absolute_path(self._REF_DIR, data_params["training_data_dir"])
        print("Training Data Directory:", data_params["training_data_dir"])

        # validation data - if any
        if "val_data_dir" in data_params:
            data_params["val_data_dir"] = path_handler.get_absolute_path(self._REF_DIR, data_params["val_data_dir"])
            print("Validation Data Directory:", data_params["val_data_dir"])
            
        if self._MIXED_PRECISION:
            data_params["data_type"] = "float32"

        # load data
        dh_start = time.time()
        data_handler = DataHandler(data_params)
        data_dict = data_handler.load_data()
        dh_stop = time.time()

        # update dict
        self.performance_dict['data_loading_time'] = dh_stop-dh_start

        # return data dict
        return data_dict
        
    def train_model(self, model_info, data_dict, n_epochs, batch_size):

        start_time = time.perf_counter()
        # model save path
        model_info["model_dir"] = path_handler.get_absolute_path(self._REF_DIR, model_info["model_dir"])

        # tensorboard directory
        if "tb_log_dir" in model_info:
            model_info["tb_log_dir"] = path_handler.get_absolute_path(self._REF_DIR, model_info["tb_log_dir"])
        print("TensorBoard Log Directory Path: ", model_info["tb_log_dir"])

        # initialize environment
        if self._FRAMEWORK == "TF":
            self.env = TFInterface(model_info,
                                   n_epochs,
                                   batch_size,
                                   self._MACHINE_NAME,
                                   self._N_GPUS,
                                   data_dict["data_type"],
                                   self._MIXED_PRECISION,
                                   self._MGPU_STRATEGY
                            )
        elif self._FRAMEWORK == "PyTorch":
            self.env = PyTorchInterface(self._DTYPE, self._MIXED_PRECISION)
        else:
            print("Invalid Environment")
        
        end_time = time.perf_counter()
        print("========> Initialize Interface: ", end_time-start_time)

        # train model
        start_time = time.perf_counter()
        self.env.build_model(data_dict)
        end_time = time.perf_counter()
        print("========> Build Model: ", end_time-start_time)
        
        start_time = time.perf_counter()
        model, m_start, m_stop, all_loss, epoch_time = self.env.train_model(data_dict)
        end_time = time.perf_counter()
        print("========> Train Model: ", end_time-start_time)
        
        # print info
        print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
        print('[INFO]: Time taken for model training (Keras):', sum(epoch_time), 'seconds')
        print("Loss Values:", all_loss)

        # update dict
        self.performance_dict["n_epochs"] = n_epochs
        self.performance_dict["batch_size"] = batch_size

        self.performance_dict['training_time_module'] = (m_stop - m_start)
        self.performance_dict['training_time_epoch_wise'] = epoch_time
        self.performance_dict['training_loss'] = all_loss

        
        
        

