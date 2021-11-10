import os
import time

from numba import jit

from .tensorflow_interface import TFInterface
from .pytorch_interface import PyTorchInterface

from .utils import file_reader, path_handler

from .apps.timeseries_prediction import hyperparameters

class ProxyTSPRD:
    def __init__(self, app_info, framework, reference_dir, mixed_precision, machine_name, n_gpus, n_cpus, n_epochs, batch_size, mgpu_strategy=None):
        # initialize
        self._REF_DIR = reference_dir
        self._FRAMEWORK = framework
        
        self._APP_NAME = app_info["app_name"]
        self._DTYPE = app_info["data_type"]
        
        self._N_EPOCHS = n_epochs
        self._BATCH_SIZE = batch_size

        # mixed precision
        self._MIXED_PRECISION_SUPPORT = app_info["mixed_precision_support"]
        self._MIXED_PRECISION = mixed_precision
        if self._MIXED_PRECISION:
            if self._MIXED_PRECISION_SUPPORT == "False": 
                print("[WARNING - Mixed Precision] Mixed precision was enabled, however, the model (%s) does not support mixed precision. Therefore, disabling mixed precision for this run." %(self._APP_NAME))
                self._MIXED_PRECISION = 0
            else:
                self._DTYPE = "float32"
        
        # multiple gpu
        self._MGPU_SUPPORT = app_info["mgpu_support"]
        self._MACHINE_NAME = machine_name
        self._N_GPUS = n_gpus
        self._N_CPUS = n_cpus
        self._MGPU_STRATEGY = mgpu_strategy
        
        if self._MGPU_SUPPORT == "False":
            print("[WARNING - Mixed Precision] %s was enabled and the execution is using %d GPUs, however, the model (%s) does not support distributed training. Therefore, using only one GPU without distributed training." %(self._MGPU_STRATEGY, self._N_GPUS, self._APP_NAME))
            self._N_GPUS = 1
            self._MGPU_STRATEGY = None
            os.environ['CUDA_VISIBLE_DEVICES'] = "0"
        else:
            if self._MGPU_STRATEGY is None:
                if self._N_GPUS > 1:
                    print("[WARNING] The execution is using %d GPUs, however, no distributed training strategy was specified." %(self._N_GPUS))
                        
        # initialize environment
        if self._FRAMEWORK == "TF":
            print("[INFO] Enabling TensorFlow Interface")
            self.env = TFInterface(self._MACHINE_NAME,
                                   self._N_GPUS,
                                   self._N_CPUS,
                                   self._DTYPE,
                                   self._N_EPOCHS,
                                   self._BATCH_SIZE,
                                   self._MIXED_PRECISION,
                                   self._MGPU_STRATEGY
                            )
        elif self._FRAMEWORK == "PT":
            print("[INFO] Enabling PyTorch Interface")
            self.env = PyTorchInterface(self._MACHINE_NAME,
                                   self._N_GPUS,
                                   self._N_CPUS,
                                   self._DTYPE,
                                   self._N_EPOCHS,
                                   self._BATCH_SIZE,
                                   self._MIXED_PRECISION,
                                   self._MGPU_STRATEGY)
        else:
            print("Invalid Environment")
        
        # output
        self.performance_dict = dict()
            
    def load_data(self, data_params):
        # load data
        dh_time, data_dict = self.env.load_data(self._REF_DIR, data_params)
        
        # update dict
        self.performance_dict['data_loading_time'] = dh_time
        
        return data_dict
        
    def train_model(self, model_info, data_dict):

        start_time = time.perf_counter()
        # model save path
        model_info["model_dir"] = path_handler.get_absolute_path(self._REF_DIR, model_info["model_dir"])

        # tensorboard directory
        if "tb_log_dir" in model_info:
            model_info["tb_log_dir"] = path_handler.get_absolute_path(self._REF_DIR, model_info["tb_log_dir"])
        print("TensorBoard Log Directory Path: ", model_info["tb_log_dir"])

        end_time = time.perf_counter()
        print("========> Initialize Interface: ", end_time-start_time)

        # train model
        start_time = time.perf_counter()
        self.env.build_model(model_info, data_dict)
        end_time = time.perf_counter()
        print("========> Build Model: ", end_time-start_time)
        
        start_time = time.perf_counter()
        model, m_start, m_stop, all_loss, epoch_time = self.env.train_model(model_info, data_dict)
        end_time = time.perf_counter()
        print("========> Train Model: ", end_time-start_time)
        
        # print info
        print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
        print('[INFO]: Time taken for model training (Keras):', sum(epoch_time), 'seconds')
        print("Loss Values:", all_loss)

        # update dict
        self.performance_dict["n_epochs"] = self._N_EPOCHS
        self.performance_dict["batch_size"] = self._BATCH_SIZE

        self.performance_dict['training_time_module'] = (m_stop - m_start)
        self.performance_dict['training_time_epoch_wise'] = epoch_time
        self.performance_dict['training_loss'] = all_loss

        
        
        

