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
        dtype="fp64"
    ) -> None:
        super().__init__(machine_name)
        self._DTYPE = dtype

    def use_pytorch(self):
        super().use_pytorch()
        
        interface = PyTorchInterfaceSN(
            dtype=self._DTYPE
        )
        return interface

class PyTorchInterfaceSN(PyTorchInterface):
    def __init__(
        self,
        dtype
    ) -> None:
        super().__init__()

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

    def load_training_data(
        self,
        data_params,
        batch_size,
        train_sampler=None
    ):
        return super().load_training_data(
            data_params=data_params,
            batch_size=batch_size,
            train_sampler=train_sampler
        )   

    def _create_rand_arr(
        self,
        batch_size,
        iname = "inp_window",
        oname = "out_window",
    ):
        ipt = samba.randn(
            batch_size, 
            60, 
            136, 
            name=iname,#'inp_window', 
            batch_dim=0,
            named_dims=('B', 'W', 'F')
        ).bfloat16().float()
        # ipt = samba.from_torch(torch.from_numpy(data_handler.X))
        # print(ipt)
        
        tgt = samba.randn(
            batch_size, 
            30, 
            136, 
            name=oname,#'out_window', 
            batch_dim=0, 
            named_dims=('B', 'W', 'F')
        ).bfloat16().float()
        # tgt = samba.from_torch(torch.from_numpy(data_handler.y))
        # print(tgt)
        
        ipt.mem_type = 'DDR' #'Host' #'HBM', 'DDR', None, 'Host'
        tgt.mem_type = 'DDR' #'Host' #'HBM', 'DDR', None, 'Host'

        inputs = (ipt, tgt)
        return inputs

    def _get_args(self, command):
        migrated_arguments = {}
        if command=="compile":
            argv_params = [command, '--pef-name='+self.app_manager._APP_NAME, '--output-folder='+self.app_manager._OUTPUT_DIR]
        elif command=="run":
            argv_params = [command, '--pef='+self.PEF_FILE]
        
        deprecated_args_found = set(migrated_arguments.keys()) & set(argv_params)
        if deprecated_args_found:
            for arg in deprecated_args_found:
                print(
                    colored(f'This specific argument {arg} is being deprecated, new argument is {migrated_arguments[arg]}',
                            'red'))

        args_cli = parse_app_args(argv=argv_params)
        args_composed = args_cli
        _ = SambaConfig(args_composed, SNConfig).get_all_params()

        args = args_composed
        # when it is not distributed mode, local rank is -1.
        args.local_rank = dist.get_rank() if dist.is_initialized() else -1
        # print(args)

        return args

    def init_training_engine(
        self,
        model_name,
        model_parameters,
        opt_params,
        criterion_params
    ):
        super().init_training_engine(
            model_name=model_name,
            model_parameters=model_parameters,
            criterion_params=criterion_params
        )

        # PEF file
        self.PEF_FILE = os.path.join(
            self.app_manager._OUTPUT_DIR,
            self.app_manager._APP_NAME + "/" + self.app_manager._APP_NAME + ".pef"
        )

        # Sync model parameters with RDU memory
        samba.from_torch_model_(self.model)

        # get optimizer for model training
        self.opt_params = opt_params
        self.opt_name = self.app_manager.get_opt()
        print(opt_params)
        print("==== OPT MOMENTUM", type(opt_params['momentum']))
        if self.opt_name == "SGD":
            self.optimizer = samba.optim.SGD(
                self.model.parameters(),
                lr=opt_params['learning_rate'],
                momentum=opt_params['momentum'],
                weight_decay=opt_params['weight_decay'])
        else:
            self.optimizer = samba.optim.Adagrad(
                self.model.parameters(),
                lr=opt_params['lr'],
                momentum=opt_params['momentum'],
                weight_decay=opt_params['weight_decay'])

        # # Annotate parameters if weight normalization is on
        # if weight_norm:
        #     utils.weight_norm_(self.model.lin_layer)

        # Compile the model to generate a PEF (Plasticine Executable Format) binary
        # utils.get_file_dir(__file__)

    def compile(
        self,
        batch_size
    ):
        # Create random input and output data for testing
        inputs = self._create_rand_arr(
            batch_size=batch_size
        )

        # Compile if PEF doesn't exist or a new PEF file is required    
        # collect all arguments
        args = self._get_args(command="compile")
        # print(
        #     "---------- Compile Arguments ------------- \n",
        #     args,
        #     "\n------------------------------------------- \n",
        # )
        # print(
        #     "---------- Compile Inputs ------------- \n",
        #     inputs,
        #     "\n------------------------------------------- \n",
        # )
        
        samba.session.compile(self.model,
                            inputs,
                            self.optimizer,
                            name=self.app_manager._APP_NAME,
                            app_dir=self.app_manager._OUTPUT_DIR,
                            config_dict=vars(args),
                            pef_metadata=get_pefmeta(args, self.model))

        print("[INFO] PEF File: %s" %(self.PEF_FILE))

    def train(
        self,
        train_loader,
        n_epochs,
        batch_size,
        num_spatial_batches=1
    ):
        # sys.exit()
        args = self._get_args(command="run")
        # print(
        #     "---------- Training Arguments ------------- \n",
        #     args,
        #     "\n------------------------------------------- \n",
        # )
        
        inputs = self._create_rand_arr(
            batch_size=batch_size
        )
        # print(
        #     "---------- Train Inputs ------------- \n",
        #     inputs,
        #     "\n------------------------------------------- \n",
        # )

        # Build inputs of the correct shape for spatial
        if args.mapping == "spatial":
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
        # print("--------------------- Hello-1 --------------------------------")
        # print(args.pef)
        # print(args.distlearn_config)
        # print("--------------------- Hello-2 --------------------------------")
        traced_outputs = utils.trace_graph(self.model,
                                           inputs,
                                           self.optimizer,
                                           pef=args.pef,
                                           mapping=args.mapping,
                                           distlearn_config=args.distlearn_config)

    
        # print("--------------------- Hello-3 --------------------------------")
        # Get data loaders for training and test data
        # train_loader, test_loader = prepare_dataloader(args)

        # Total training steps (iterations) per epoch
        total_step = len(train_loader)

        # hyperparam_dict = {"lr": args.lr, "momentum": args.momentum, "weight_decay": args.weight_decay}
        # print(self.opt_params)
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
                                                data_parallel=args.data_parallel,
                                                reduce_on_rdu=args.reduce_on_rdu)

                # Sync the loss and outputs with host memory
                loss, outputs = samba.to_torch(loss), samba.to_torch(outputs)
                avg_loss += loss.mean()

                # Print loss per 10,000th sample in every epoch
                # if (i + 1) % 10000 == 0 and args.local_rank <= 0:
            print('Epoch [{}/{}], Step [{}/{}], Loss: {:.4f}'.format(epoch + 1, n_epochs, i + 1, total_step,
                                                                            avg_loss / (i + 1)))

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
        print("[INFO] Training Time: %f" %(time.perf_counter()-start_time))