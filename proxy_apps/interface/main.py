import os, sys
import glob
import json

from .managers.app_manager import AppManager
from .managers.data_manager import TimeSeriesDataManager

from ..utils import path_handler

class Interface:
    def __init__(
        self,
    ) -> None:
        self._GLOBAL_RANK = 0

    def init_app_manager(
        self, 
        app,
        app_name,
        output_dir,
        mixed_precision_support=False
    ):
        # initiate app manager
        self.app_manager = AppManager(
            app=app,
            app_name=app_name,
            output_dir=output_dir,
            print_rank=self._GLOBAL_RANK
        )

        # select ML framework in app manager
        self.app_manager._ML_FRAMEWORK = self._ML_FRAMEWORK
        assert self.app_manager._ML_FRAMEWORK in ["PyTorch", "TensorFlow"], "[ERROR] %s is not supported, choose between [PyTorch, TensorFlow] %(ml_framework)"

        # mixed precision support
        self.app_manager._MIXED_PRECISION_SUPPORT = mixed_precision_support
        if self._GLOBAL_RANK == 0:
            print("[INFO] App Supports Mixed Precision: %s" %(self.app_manager._MIXED_PRECISION_SUPPORT))
        
    def init_data_manager(
            self,
            data_dir,
            file_format,
            data_manager,
            train_files=-1,
            val_files=0,
            test_files=0,
            shuffle=False
        ):
        self._DATA_MANAGER = data_manager
        if self._DATA_MANAGER == "TimeSeries":
            self.data_manager = TimeSeriesDataManager(
                data_dir=data_dir,
                file_format=file_format,
                train_files=train_files,
                test_files=test_files,
                val_files=val_files,
                shuffle=shuffle,
                print_rank=int(self._GLOBAL_RANK)
            )

    def load_data(
        self,
        data_files,
        data_params

    ):
        assert len(data_files) > 0, "[ERROR] Empty files list. Cannot create data loader with zero data files."
        return self.app_manager.get_datagenerator(
            files=data_files,
            data_params=data_params,
            dtype=self._DTYPE
        )
    
    def init_training_engine(
        self,
        model_name,
        data_params,
        criterion_params,
        device=None
    ):
        self.data_params = data_params
        self.criterion = self.app_manager.get_criterion(criterion_params=criterion_params)
        self.model = self.app_manager.get_model(
                        model_name, 
                        data_params, 
                        device=device
                    )
    
    def init_inference_engine(self):
        pass

    