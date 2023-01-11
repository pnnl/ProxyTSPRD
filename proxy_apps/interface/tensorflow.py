import os
import tensorflow as tf

from .main import Interface

class TensorFlowInterface(Interface):
    def __init__(
        self, 
    ) -> None:
        super().__init__()
        self._ML_FRAMEWORK = "TensorFlow"

        ## PyTorch Setup
        if self._GLOBAL_RANK == "0":
            print("[INFO] TensorFlow version: ", tf.__version__)

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
            mixed_precision_support=mixed_precision_support
        )

    def init_data_manager(
        self,
        data_dir,
        file_format,
        data_manager_type,
        train_files=-1,
        test_files=0,
        val_files=0,
        shuffle=False
    ):
        data_manager = super().init_data_manager(
            data_dir=data_dir,
            file_format=file_format,
            data_manager_type=data_manager_type,
            train_files=train_files,
            test_files=test_files,
            val_files=val_files,
            shuffle=shuffle
        )
        
        # keep track of framework
        data_manager._ML_FRAMEWORK = self._ML_FRAMEWORK

        return data_manager
    
    def load_data(
        self, 
        data_files,
        data_params,
        num_workers=0,
        pin_memory=False,
        sampler=None,
        batch_size=1
    ):
        # empty training dataset
        dataloader = None
        # self.data_manager._BATCH_SIZE = batch_size

        # pytorch data loader
        data_generator = super().load_data(
            data_files,
            data_params
        )
        if data_params["dataloader"] == "torch.utils.data.Dataset":
            dataloader = torch.utils.data.DataLoader(
                data_generator, 
                batch_size=batch_size, 
                pin_memory=pin_memory, 
                num_workers=num_workers,
                sampler=sampler
            )

        return dataloader

    def init_training_engine(
        self,
        model_name,
        model_dir,
        data_params,
        criterion_params,
        device=None
    ):
        super().init_training_engine(
            model_name=model_name,
            data_params=data_params,
            criterion_params=criterion_params,
            device=device
        )

        # load if model exists
        self._MODEL_PATH = os.path.join(
                            model_dir, 
                            model_name + ".pt"
                        )
        print(f"[INFO] Model Path: %s" %(self._MODEL_PATH))
        if os.path.exists(self._MODEL_PATH):
            self.model.load_state_dict(
                torch.load(
                    self._MODEL_PATH,
                    map_location=torch.device(self._DEVICE)
                )
            )
        elif not os.path.exists(model_dir):
            os.makedirs(model_dir)

        # print model parameters
        if self._GLOBAL_RANK == 0:
            print("[INFO] Model Parameters:")
            for name, param in self.model.named_parameters():
                if param.requires_grad:
                    print(name, param.shape)

    def train(self):
        pass

    def infer(self):
        pass

