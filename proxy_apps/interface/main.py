import os, sys
import glob
import json

from .managers.app_manager import AppManager
from .managers.data_manager import TimeSeriesDataManager

from ..utils import path_handler

class Interface:
    def __init__(
        self#,
        # machine_name,
        # data_type,
        # n_epochs,
        # batch_size
    ) -> None:
        # self._MACHINE_NAME = machine_name
        # self._DTYPE = data_type
        # self._N_EPOCHS = n_epochs
        # self._BATCH_SIZE = batch_size
        self._GLOBAL_RANK = 0

    def init_app_manager(
        self, 
        app,
        app_name,
        output_dir,
        ml_framework
    ):
        self.app_manager = AppManager(
            app=app,
            app_name=app_name,
            output_dir=output_dir,
            ml_framework=ml_framework,
            print_rank=int(self._GLOBAL_RANK)
        )
        
    def init_data_manager(
            self,
            training_data_dir,
            input_file_format,
            data_type,
            n_training_files=-1,
            val_data_dir=None,
            batch_size=1
        ):
        self._DATA_TYPE = data_type
        if self._DATA_TYPE == "TimeSeries":
            self.data_manager = TimeSeriesDataManager(
                training_data_dir=training_data_dir,
                input_file_format=input_file_format,
                n_training_files=n_training_files,
                val_data_dir=val_data_dir,
                print_rank=int(self._GLOBAL_RANK),
                batch_size=batch_size
            )

    def init_training_engine(self):
        pass

    def init_inference_engine(self):
        pass

    def load_data(
        self,
        type,
        data_params

    ):
        # get data reader
        # print("Data Type:", self._DTYPE)
        if type == "train":
            return self.app_manager.get_dataloader(
                files=self.data_manager._TRAINING_FILES,
                data_params=data_params,
                dtype=self._DTYPE
            )
        elif type == "test":
            # sys.exit(self.data_manager._TEST_FILES)
            return self.app_manager.get_dataloader(
                files=self.data_manager._TEST_FILES,
                data_params=data_params,
                dtype=self._DTYPE
            )
    
    def init_training_engine(
        self,
        model_name,
        model_parameters,
        criterion_params,
        device=None
    ):
        self.model_params = model_parameters
        self.criterion = self.app_manager.get_criterion(criterion_params=criterion_params)
        self.model = self.app_manager.get_model(model_name, model_parameters, device=device)
        