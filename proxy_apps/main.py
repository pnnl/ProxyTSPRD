import os
import time

from .tensorflow_interface import TFInterface
from .pytorch_interface import PyTorchInterface
from .utils import file_reader, path_handler
from .apps.timeseries_prediction import hyperparameters

class ProxyTSPRD:
    def __init__(self, config_file, 
                 model_name, n_epochs, batch_size, mixed_precision, 
                 machine_name, n_gpus, n_cpus,
                 data_dir, model_dir,
                 framework
                ):
        # System Setup
        config = file_reader.read_config(config_file)

        self._APP_NAME = config["info"]["app_name"]
        self._NROWS = int(config["data"]["n_rows"])
        self._NCOLS = int(config["data"]["n_cols"])
        self._REPEAT_COLS = int(config["data"]["repeat_cols"])
        self._WINDOW_SIZE = int(config["data"]["window_size"])
        self._SHIFT_SIZE = int(config["data"]["shift_size"])
        self._STRIDE = int(config["data"]["stride"])
        self._N_SIGNALS = int(config["data"]["n_signals"])
        self._DTYPE = config["model"]["dtype"]
        
        self._MODEL_NAME = model_name
        self._MACHINE_NAME = machine_name
        self._N_EPOCHS = n_epochs
        self._BATCH_SIZE = batch_size
        self._MIXED_PRECISION = bool(mixed_precision)
        self._HYPERPARAMETER_DICT = config["model"]["hyperparameters"]

        self._N_GPUS = n_gpus
        self._N_CPUS = n_cpus

        self._LABEL = self._MODEL_NAME
        self._SUFFIX = self._MACHINE_NAME + '_' + \
                    'ng' + str(self._N_GPUS) + '_' + \
                    'nc' + str(self._N_CPUS) + '_' + \
                    'e' + str(self._N_EPOCHS) + '_' + \
                    'b' + str(self._BATCH_SIZE) + '_' + \
                    'r' + str(self._REPEAT_COLS) + '_' + \
                    'mp' + str(mixed_precision) + '_' + self._LABEL
        
        self._DATA_DIR = data_dir
        self._MODEL_DIR = model_dir
        self._INPUT_DIR = config["info"]["input_dir"]

        self._FRAMEWORK = framework
        
        # output
        self.performance_dict = dict()
        
        # initialize environment
        if self._FRAMEWORK == "TF":
            self.env = TFInterface(self._LABEL, self._DTYPE, self._MIXED_PRECISION, self._N_GPUS)
        elif self._FRAMEWORK == "PyTorch":
            self.env = PyTorchInterface(self._DTYPE, self._MIXED_PRECISION)
        else:
            print("Invalid Environment")
            
    def load_data(self, curr_dir):
        dh_start = time.time()    
        scenario_dir = path_handler.get_absolute_path(curr_dir, self._INPUT_DIR)
        print("Scenario Directory:", scenario_dir)
        
        self.env.load_data(scenario_dir, self._NROWS, self._NCOLS, self._REPEAT_COLS, self._DTYPE, 
                           self._WINDOW_SIZE, self._SHIFT_SIZE, self._N_SIGNALS)
        dh_stop = time.time()
        self.performance_dict['data_handler_time'] = dh_stop-dh_start
        
    def train_model(self):
        # Initialize Hyperparameters - we can keep it as a dict instead of creating a separate class
        self._HYPERPARAMETER_DICT['original_dim']       = self._REPEAT_COLS * self._NCOLS   # input data dimension
        self._HYPERPARAMETER_DICT['num_epochs']         = self._N_EPOCHS  # Number of epochs  
        self._HYPERPARAMETER_DICT['batch_size']         = self._BATCH_SIZE
        self._HYPERPARAMETER_DICT['dtype']              = self._DTYPE

        hp = hyperparameters.HyperParameters(self._HYPERPARAMETER_DICT)
        hp.model_name         = self._LABEL

        self.performance_dict["n_epochs"] = hp.ep
        self.performance_dict["batch_size"] = hp.bs
        
        model_path = path_handler.get_absolute_path(self._MODEL_DIR, self._SUFFIX)
        model, m_start, m_stop, all_loss, epoch_time = self.env.train_model(hp, model_path)
        
        # print info
        print('[INFO]: Time taken for model training (time module):', m_stop - m_start, 'seconds')
        print('[INFO]: Time taken for model training (Keras):', sum(epoch_time), 'seconds')
        print("Loss Values:", all_loss)
        
        performance_dict['training_time_module'] = (m_stop - m_start)
        performance_dict['training_time_epoch_wise'] = epoch_time
        performance_dict['training_loss'] = all_loss

        
        
        

