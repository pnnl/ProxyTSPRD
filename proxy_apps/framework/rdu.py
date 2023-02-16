import os
import sys
import time

from termcolor import colored
import sambaflow.samba.utils as utils
from sambaflow import samba
from sambaflow.samba.schema.snconfig import SNConfig
from sambaflow.samba.test import TestWithGold
from sambaflow.samba.utils.argparser import (SambaConfig, parse_app_args,
                                             parse_yaml_to_args)
from sambaflow.samba.utils.benchmark_acc import AccuracyReport
from sambaflow.samba.utils.dataset.mnist import dataset_transform
from sambaflow.samba.utils.pef_utils import get_pefmeta
from sambaflow.samba.utils.tensorboard_debug import dump_accuracy_debug_info

import torch
import torch.distributed as dist

from .main import Framework
from .import PyTorchInterface

class RDU(Framework):
    def __init__(
        self, 
        machine_name,
        dtype="fp64",
        n_rdus=1
    ) -> None:
        super().__init__(machine_name)
        self._N_RDUS = n_rdus
        self._DTYPE = dtype

    def use_pytorch(self):
        super().use_pytorch()
        
        interface = PyTorchInterfaceSN(
            n_rdus=self._N_RDUS,
            dtype=self._DTYPE
        )
        return interface

class PyTorchInterfaceSN(PyTorchInterface):
    def __init__(
        self,
        n_rdus,
        dtype
    ) -> None:
        super().__init__()

        # multiple rdus
        self._N_RDUS = n_rdus

        # when it is not distributed mode, local rank is -1.
        self.local_rank = dist.get_rank() if dist.is_initialized() else -1

        # set default data type
        self._FDTYPE = torch.float64
        self._DTYPE = "float64"
        
        if dtype == "int":
            self._FDTYPE = torch.int32
            self._DTYPE = "int32"
        elif dtype == "fp16":
            self._FDTYPE = torch.float16
            self._DTYPE = "float16"
        elif dtype == "fp32":
            self._FDTYPE = torch.float32
            self._DTYPE = "float32"
        elif dtype == "amp":
            self._FDTYPE = torch.float32
            self._DTYPE = "float32"

    def init_app_manager(
        self, 
        app,
        app_name,
        suffix,
        output_dir,
        stage,
        batch_size=1,
        mixed_precision_support=False
    ):
        super().init_app_manager(    
            app=app,
            app_name=app_name,
            output_dir=output_dir, 
            mixed_precision_support=mixed_precision_support
        )

        # PEF file
        self.app_manager._OUTPUT_DIR = os.path.join(
            self.app_manager._OUTPUT_DIR,
            self.app_manager._APP_NAME
        )
        self.app_manager._PEF_NAME = suffix
        self.app_manager._PEF_FILE = os.path.join(
            self.app_manager._OUTPUT_DIR,
            self.app_manager._PEF_NAME + "/" + self.app_manager._PEF_NAME + ".pef"
        )
        
        # collect all arguments
        self._ARGS = self._get_args(command=stage, batch_size=batch_size)
        
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

        return data_manager

    def load_data(
        self,
        data_files,
        data_params,
        batch_size=1
    ):
        dataloader = super().load_data(
            data_files,
            data_params=data_params,
            pin_memory=False,
            batch_size=batch_size,
            num_replicas=self._N_RDUS
        )

        return dataloader 

    def _create_rand_arr(
        self,
        data_params,
        batch_size,
        iname = "inp_window",
        oname = "out_window",
    ):
        ipt = samba.randn(
            batch_size, 
            data_params["bw_size"], 
            data_params["n_features"], 
            name=iname,#'inp_window', 
            batch_dim=0,
            named_dims=('B', 'W', 'F')
        ).bfloat16().float()
        # ipt = samba.from_torch(torch.from_numpy(data_handler.X))
        # print(ipt)
        
        tgt = samba.randn(
            batch_size, 
            data_params["fw_size"], 
            data_params["n_features"], 
            name=oname,#'out_window', 
            batch_dim=0, 
            named_dims=('B', 'W', 'F')
        ).bfloat16().float()
        # tgt = samba.from_torch(torch.from_numpy(data_handler.y))
        # print(tgt)
        
        ipt.host_memory = False #'Host' #'HBM', 'DDR', None, 'Host'
        tgt.host_memory = False #'Host' #'HBM', 'DDR', None, 'Host'

        inputs = (ipt, tgt)
        return inputs

    def _get_args(self, command, batch_size):
        migrated_arguments = {}
        if command=="compile":
            argv_params = [command, '--pef-name='+self.app_manager._PEF_NAME, '--output-folder='+self.app_manager._OUTPUT_DIR, '-b=' + str(batch_size), "--log-level=error"]
            if self._N_RDUS > 1:
                mrdu_params = ["--data-parallel", "-ws=" + str(self._N_RDUS)]
                argv_params = argv_params + mrdu_params
        elif command=="run":
            argv_params = [command, '--pef='+self.app_manager._PEF_FILE, '-b=' + str(batch_size), "--log-level=error"]
            if self._N_RDUS > 1:
                mrdu_params = ["--data-parallel", "--reduce-on-rdu"]
                argv_params = argv_params + mrdu_params
        
        # deprecated_args_found = set(migrated_arguments.keys()) & set(argv_params)
        # if deprecated_args_found:
        #     for arg in deprecated_args_found:
        #         print(
        #             colored(f'This specific argument {arg} is being deprecated, new argument is {migrated_arguments[arg]}',
        #                     'red'))

        args = parse_app_args(argv=argv_params)
        # args_composed = args_cli
        # _ = SambaConfig(args_composed, SNConfig).get_all_params()

        # args = args_composed
        # if args.yaml_config:
        #     print("Config file do exist!")
        #     parse_yaml_to_args(args.yaml_config, args)

        # when it is not distributed mode, local rank is -1.
        self._LOCAL_RANK = dist.get_rank() if dist.is_initialized() else -1
        if self._LOCAL_RANK == -1:
            self._GLOBAL_RANK = 0
        else:
            self._GLOBAL_RANK = self._LOCAL_RANK
        args.local_rank = self._LOCAL_RANK
        # print(args.local_rank)
        # sys.exit(1)
        # print(args)

        return args

    def init_training_engine(
        self,
        model_name,
        model_dir,
        data_params,
        opt_params,
        criterion_params
    ):
        super().init_training_engine(
            model_name=model_name,
            model_dir=model_dir,
            data_params=data_params,
            criterion_params=criterion_params
        )
        
        # Sync model parameters with RDU memory
        samba.from_torch_model_(self.model)
        
        # get optimizer for model training
        self.opt_params = opt_params
        self.optimizer = self.app_manager.get_opt(
            model_params=self.model.parameters(),
            opt_params=self.opt_params
        )
        
    def compile(
        self,
        data_params,
        batch_size
    ):
        # Create random input and output data for testing
        inputs = self._create_rand_arr(
            data_params=data_params,
            batch_size=batch_size
        )
        
        # Compile if PEF doesn't exist or a new PEF file is required    
        samba.session.compile(self.model,
                            inputs,
                            self.optimizer,
                            name=self.app_manager._APP_NAME,
                            app_dir=self.app_manager._OUTPUT_DIR,
                            config_dict=vars(self._ARGS),
                            pef_metadata=get_pefmeta(self._ARGS, self.model))

        if self._GLOBAL_RANK == 0:
            print("[INFO] PEF File: %s" %(self.app_manager._PEF_FILE))

    def train(
        self,
        train_loader,
        data_params,
        n_epochs,
        batch_size,
        num_spatial_batches=1
    ):
        # create random array
        inputs = self._create_rand_arr(
            data_params=data_params,
            batch_size=batch_size
        )
        
        # Build inputs of the correct shape for spatial
        if self._ARGS.mapping == "spatial":
            # print(inputs[0].shape, inputs[1].shape)
            inputs = (samba.SambaTensor(samba.to_torch(inputs[0]).repeat(num_spatial_batches, 1),
                                        name='inp_window',
                                        batch_dim=0),
                      samba.SambaTensor(samba.to_torch(inputs[1]).repeat(num_spatial_batches),
                                        name='out_window',
                                        batch_dim=0))

        # Trace the compiled graph to initialize the model weights and input/output tensors
        # for execution on the RDU.
        # The PEF required for tracing is the binary generated during compilation
        # Mapping refers to how the model layers are arranged in a pipeline for execution.
        # Valid options: 'spatial' or 'section'
        traced_outputs = utils.trace_graph(self.model,
                                           inputs,
                                           self.optimizer,
                                           pef=self._ARGS.pef,
                                           mapping=self._ARGS.mapping,
                                           distlearn_config=self._ARGS.distlearn_config)

    
        # Total training steps (iterations) per epoch
        total_step = len(train_loader)

        # start training
        start_time = time.perf_counter()

        # Train and test for specified number of epochs
        for epoch in range(n_epochs):
            avg_loss = 0

            # Train the model for all samples in the train data loader
            for i, (inp_win, out_win) in enumerate(train_loader):
                if inp_win.shape[0] != batch_size:
                    continue
                
                sn_inp = samba.from_torch_tensor(inp_win, name='inp_window', batch_dim=0)
                sn_out = samba.from_torch_tensor(out_win, name='out_window', batch_dim=0)

                loss, outputs = samba.session.run(input_tensors=[sn_inp, sn_out],
                                                output_tensors=traced_outputs,
                                                hyperparam_dict=self.opt_params,
                                                data_parallel=self._ARGS.data_parallel,
                                                reduce_on_rdu=self._ARGS.reduce_on_rdu)

                # Sync the loss and outputs with host memory
                loss, outputs = samba.to_torch(loss), samba.to_torch(outputs)
                avg_loss += loss.mean()

                # Print loss per 10,000th sample in every epoch
                # if (i + 1) % 10000 == 0 and args.local_rank <= 0:
            if self._GLOBAL_RANK == 0:
                print('Epoch [{}/{}], Step [{}/{}], Loss: {:.4f}'.format(epoch + 1, n_epochs, i + 1, total_step, avg_loss / (i + 1)))

            # # Check the accuracy of the trained model for all samples in the test data loader
            # # Sync the model parameters with host memory
            # samba.session.to_cpu(self.model)
            # test_acc = 0.0
            # with torch.no_grad():
            #     correct = 0
            #     total = 0
            #     total_loss = 0
            #     for images, labels in test_loader:
            #         loss, outputs = self.model(images, labels)
            #         loss, outputs = samba.to_torch(loss), samba.to_torch(outputs)
            #         total_loss += loss.mean()
            #         _, predicted = torch.max(outputs.data, 1)
            #         total += labels.size(0)
            #         correct += (predicted == labels).sum()

            #     test_acc = 100.0 * correct / total

            #     if args.local_rank <= 0:
            #         print('Test Accuracy: {:.2f}'.format(test_acc),
            #             ' Loss: {:.4f}'.format(total_loss.item() / (len(test_loader))))

        #     if args.acc_test:
        #         assert args.num_epochs == 1, "Accuracy test only supported for 1 epoch"
        #         assert test_acc > 91.0 and test_acc < 92.0, "Test accuracy not within specified bounds."

        # if args.json is not None:
        #     report = AccuracyReport(val_accuracy=test_acc.item(),
        #                             batch_size=args.batch_size,
        #                             num_iterations=args.num_epochs * total_step)
        #     report.save(args.json)
        if self._GLOBAL_RANK == 0:
            print("[INFO] Training Time: %f" %(time.perf_counter()-start_time))