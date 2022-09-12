import os
import json

class Framework:
    def __init__(
        self, 
        machine_name#, 
        # config_file, 
        # n_epochs, 
        # batch_size
    ) -> None:
        # initialize
        self._MACHINE_NAME = machine_name
        # self._config_file = config_file
        
        # self._n_epochs = n_epochs
        # self._batch_size = batch_size

        # self.read_config()

    def use_pytorch(self):
        # select pytorch interface
        self._ML_FRAMEWORK = "PyTorch"
        pass

    def use_tensorflow(self):
        # select tensorflow interface
        self._ML_FRAMEWORK = "TensorFlow"
        pass