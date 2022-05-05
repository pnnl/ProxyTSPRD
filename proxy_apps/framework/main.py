import os
import json

class Framework:
    def __init__(
        self, 
        machine_name, 
        config_file, 
        n_epochs, 
        batch_size
    ) -> None:
        # initialize
        self._machine_name = machine_name
        self._config_file = config_file
        
        self._n_epochs = n_epochs
        self._batch_size = batch_size

        self.read_config()

    def read_config(self):
        # check if configuration file exists
        assert os.path.exists(self._config_file), "Configuration file not found: %s" %(self._config_file)

        with open(self._config_file) as fp:
            self.config = json.load(fp)

    def use_pytorch(self):
        # select pytorch interface
        pass

    def use_tensorflow(self):
        # select tensorflow interface

        