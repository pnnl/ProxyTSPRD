import os
import time

from .tensorflow_interface import TFInterface
from .pytorch_interface import PyTorchInterface

from .utils import file_reader, path_handler
from .utils.data.main import DataHandler

from .apps.timeseries_prediction import hyperparameters

class ProxyTSPRD:
    def __init__(self, app_name, framework, reference_dir):
        self._APP_NAME = app_name
        self._FRAMEWORK = framework
        self._REF_DIR = reference_dir

        # output
        self.performance_dict = dict()
            
    def load_data(self, data_params):
        # training data
        data_params["training_data_dir"] = path_handler.get_absolute_path(self._REF_DIR, data_params["training_data_dir"])
        print("Training Data Directory:", data_params["training_data_dir"])

        # validation data - if any
        if "val_data_dir" in data_params:
            data_params["val_data_dir"] = path_handler.get_absolute_path(self._REF_DIR, data_params["val_data_dir"])
            print("Validation Data Directory:", data_params["training_data_dir"])

        # load data
        dh_start = time.time()
        data_handler = DataHandler(data_params)
        data_dict = data_handler.load_data()
        dh_stop = time.time()

        self.performance_dict['data_loading_time'] = dh_stop-dh_start

        return data_dict
        
    def train_model(self, model_info, data_dict, n_epochs, batch_size,
                    machine_name, n_gpus, n_cpus,
                    mixed_precision=False, mgpu_strategy=None):

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
                                   machine_name,
                                   n_gpus,
                                   n_cpus,
                                   mixed_precision,
                                   mgpu_strategy
                            )
        elif self._FRAMEWORK == "PyTorch":
            self.env = PyTorchInterface(self._DTYPE, self._MIXED_PRECISION)
        else:
            print("Invalid Environment")

        # train model
        model, m_start, m_stop, all_loss, epoch_time = self.env.train_model(data_dict)
        
        # print info
        print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
        print('[INFO]: Time taken for model training (Keras):', sum(epoch_time), 'seconds')
        print("Loss Values:", all_loss)

        self.performance_dict["n_epochs"] = hp.ep
        self.performance_dict["batch_size"] = hp.bs

        self.performance_dict['training_time_module'] = (m_stop - m_start)
        self.performance_dict['training_time_epoch_wise'] = epoch_time
        self.performance_dict['training_loss'] = all_loss

        
        
        

