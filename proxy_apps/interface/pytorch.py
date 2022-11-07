from .main import Interface
import torch

class PyTorchInterface(Interface):
    def __init__(
        self#, 
        # machine_name, 
        # data_type, 
        # n_epochs, 
        # batch_size
    ) -> None:
        super().__init__()#machine_name, data_type, n_epochs, batch_size)
        self._ML_FRAMEWORK = "PyTorch"

        ## PyTorch Setup
        if self._GLOBAL_RANK == "0":
            print("[INFO] PyTorch version: ", torch.__version__)

    def init_app_manager(
        self, 
        app,
        app_name,
        output_dir,
        mixed_precision_support=False
    ):
        super().init_app_manager(
            app=app,
            app_name=app_name, 
            output_dir=output_dir,
            ml_framework="PyTorch"
        )
        
        # mixed precision support
        self.app_manager._MIXED_PRECISION_SUPPORT = mixed_precision_support
        if self._GLOBAL_RANK == "0":
            print("[INFO] App Supports Mixed Precision: %s" %(self.app_manager._MIXED_PRECISION_SUPPORT))

    def init_data_manager(
        self,
        training_data_dir,
        input_file_format,
        data_type,
        n_training_files=-1,
        val_data_dir=None
    ):
        super().init_data_manager(
            training_data_dir=training_data_dir,
            input_file_format=input_file_format,
            data_type=data_type,
            n_training_files=n_training_files,
            val_data_dir=val_data_dir
        )
        
        # keep track of framework
        self.data_manager._ML_FRAMEWORK = self._ML_FRAMEWORK

        
    
    def load_training_data(
        self, 
        data_params,
        batch_size,
        num_workers=0,
        pin_memory=False,
        train_sampler=None
    ):
        super().load_training_data(data_params, batch_size)

        if data_params["data_generator"] == "torch.utils.data.Dataset":
            training_dataset = torch.utils.data.DataLoader(
                self.data_manager.training_data, 
                batch_size=self.data_manager._BATCH_SIZE, 
                pin_memory=pin_memory, 
                num_workers=num_workers,
                sampler=train_sampler
            )

        return training_dataset

    def load_data(self):
        super().load_data()
        self._DATA_GENERATOR_NAME = self.config["data_params"]["data_generator"] + "_PT"
        
    def init_training_engine(
        self,
        model_name,
        model_parameters,
        criterion_params,
        device=None
    ):
        super().init_training_engine(
            model_name=model_name,
            model_parameters=model_parameters,
            criterion_params=criterion_params,
            device=device
        )

        if self._GLOBAL_RANK == "0":
            print("[INFO] Model Parameters: \n")
            for name, param in self.model.named_parameters():
                if param.requires_grad:
                    print(name, param.shape)

    def train(self):
        pass


    

