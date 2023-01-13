import os, sys
import torch

from .main import Interface

class PyTorchInterface(Interface):
    def __init__(
        self, 
    ) -> None:
        super().__init__()
        self._ML_FRAMEWORK = "PyTorch"

        ## PyTorch Setup
        if self._GLOBAL_RANK == 0:
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

    def load_ait_module(
        self,
        data_params,
        batch_size=1,
        device=None
    ):
        super().load_ait_model()

        ait_model = self.app_manager.get_ait_model(
            data_params=data_params,
            device=device
        )

        from aitemplate.compiler import compile_model
        from aitemplate.frontend import Tensor
        from aitemplate.testing import detect_target
        from aitemplate.testing.benchmark_pt import benchmark_torch_function
        from aitemplate.utils.graph_utils import sorted_graph_pseudo_code

        from collections import OrderedDict

        def map_pt_params(ait_model, pt_model):
            ait_model.name_parameter_tensor()
            pt_params = dict(pt_model.named_parameters())
            mapped_pt_params = OrderedDict()
            for name, _ in ait_model.named_parameters():
                ait_name = name.replace(".", "_")
                assert name in pt_params
                mapped_pt_params[ait_name] = pt_params[name]
            return mapped_pt_params

        # create AIT input Tensor
        X = Tensor(
            shape=[batch_size, data_params["n_features"], data_params["bw_size"]],
            name="X",
            dtype="float64",
            is_input=True,
        )
        # run AIT module to generate output tensor
        Y = ait_model(X)
        # mark the output tensor
        Y._attrs["is_output"] = True
        Y._attrs["name"] = "Y"

        # map pt weights to ait
        weights = map_pt_params(ait_model, self.model)

        # codegen
        target = detect_target()
        module = compile_model(Y, target, "./tmp", "simple_model_demo", constants=weights)

        return module




    

