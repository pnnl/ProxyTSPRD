import os, sys, time
import socket
import datetime
import numpy as np

from scipy.sparse import random, coo_matrix, triu
import pandas as pd

import dgl
import torch
import torch.distributed as dist

from .main import Interface

class PyTorchInterface(Interface):
    def __init__(
        self, 
        mpi_rank=0
    ) -> None:
        super().__init__(mpi_rank=mpi_rank)
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
        batch_size=1,
        num_replicas=1
    ):
        # empty training dataset
        dataloader = None
        # self.data_manager._BATCH_SIZE = batch_size

        # pytorch data loader
        data_generator = super().load_data(
            data_files,
            data_params
        )
        if data_params["dataloader"] in ["torch.utils.data.Dataset", "graphloader"]:
            sampler = None
            if num_replicas > 1:
                sampler = torch.utils.data.distributed.DistributedSampler(
                    data_generator,
                    num_replicas=num_replicas
                )

            dataloader = torch.utils.data.DataLoader(
                data_generator, 
                batch_size=batch_size, 
                pin_memory=pin_memory, 
                num_workers=num_workers,
                sampler=sampler
            )
            
        return data_generator, dataloader
             
    def init_training_engine(
        self,
        model_name,
        model_dir,
        model_params,
        criterion_params,
        device=None
    ):
        super().init_training_engine(
            model_name=model_name,
            model_params=model_params,
            criterion_params=criterion_params,
            device=device
        )
        model_exists = False

        # load if model exists
        self._MODEL_PATH = os.path.join(
                            model_dir, 
                            model_name + ".pt"
                        )
        if self._GLOBAL_RANK == 0:
            print(f"[INFO] Model Path: %s" %(self._MODEL_PATH))
        if os.path.exists(self._MODEL_PATH):
            self.model.load_state_dict(
                torch.load(
                    self._MODEL_PATH,
                    map_location=torch.device(self._DEVICE)
                )
            )
            if self._GLOBAL_RANK == 0:
                print(f"[INFO] Loaded Model: %s" %(self._MODEL_PATH))
        
            model_exists = True
        elif not os.path.exists(model_dir):
            os.makedirs(model_dir)

        # print model parameters
        if self._GLOBAL_RANK == 0:
            print("[INFO] Model Parameters:")
            for name, param in self.model.named_parameters():
                if param.requires_grad:
                    print(name, param.shape)

        return model_exists

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
                # print("Length:", len(pt_params[name].shape))
                if len(pt_params[name].shape) == 4:
                    arr = pt_params[name].permute((0, 2, 3, 1)).contiguous()
                else:
                    arr = pt_params[name].contiguous()
                ait_name = name.replace(".", "_")
                assert name in pt_params
                mapped_pt_params[ait_name] = arr
                print(name, arr.shape, pt_params[name].shape)

            return mapped_pt_params

        # create AIT input Tensor
        print(self._DTYPE)
        X = Tensor(
            shape=[batch_size, data_params["bw_size"], data_params["n_features"], data_params["n_channels"]],
            name="X",
            dtype=self._DTYPE,
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
        # print(self.app_manager._OUTPUT_DIR, os.path.basename(self._MODEL_PATH).split(".")[0])
        # sys.exit()
        module = compile_model(
            Y, target, 
            os.path.dirname(self._MODEL_PATH), 
            os.path.basename(self._MODEL_PATH).split(".")[0], 
            constants=weights)

        return module
    
class PyTorchInterfaceGPU(PyTorchInterface):
    def __init__(
        self,
        n_gpus,
        n_cpus,
        mgpu_strategy,
        mixed_precision,
        dtype,
        mpi_rank=0
        # profiling
    ) -> None:
        super().__init__(mpi_rank=mpi_rank)
        
        # setup devices
        self._setup_devices(n_gpus, n_cpus, mgpu_strategy)

        # setup default data type
        self._setup_default_dtype(dtype)

        # mixed precision - could be moved to Interface because it is required for both GPU and RDU; and for both TF and PT
        self._MIXED_PRECISION = mixed_precision

        # enable profiling - could be moved to Interface because it is required for both GPU and RDU; and for both TF and PT
        # self._PROFILING = profiling

    def _setup_devices(self, n_gpus, n_cpus, mgpu_strategy):
        # number of GPUs and CPUs
        self._N_GPUS = n_gpus
        self._N_CPUS = n_cpus
        self._MGPU_STRATEGY = None
        
        # enable GPU, when GPU is available and needed
        self._DEVICE_STR = 'cpu'
        if torch.cuda.is_available() and (self._N_GPUS > 0): 
            self._DEVICE_STR = 'cuda'  
            
        # set torch device
        self._DEVICE = torch.device(self._DEVICE_STR)
        if self._GLOBAL_RANK == 0:
            print("[INFO] Device Type: %s" %(self._DEVICE))

        # if GPUs are not available or if GPUs are not selected
        if self._DEVICE_STR=='cpu': 
            if self._GLOBAL_RANK == 0:
                print("[WARNING] No GPUs found, falling back to CPUs")
        # if GPUs are available and selected
        elif self._DEVICE_STR=='cuda':
            # gpus found - using multi gpu strategy
            self._MGPU_STRATEGY = mgpu_strategy
            
            self._TOTAL_GPUs = torch.cuda.device_count()
            # do we have the number of GPUs we are asking for
            if self._N_GPUS > self._TOTAL_GPUs:
                if self._GLOBAL_RANK == 0:
                    print("[WARNING] Selected %d GPUs but only %d GPUs found. Using max #GPUs available: %d" %(self._N_GPUS, self._TOTAL_GPUs, self._TOTAL_GPUs))
            else:
                if self._GLOBAL_RANK == 0:
                    print("[INFO] Using %d/%d GPUs" %(self._N_GPUS, self._TOTAL_GPUs))

    def _setup_default_dtype(self, dtype):
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
        
        if dtype != "amp": 
            torch.set_default_dtype(self._FDTYPE)
        if self._GLOBAL_RANK == 0:
            print("[INFO] Python Data Type: %s" %(self._DTYPE))
            print("[INFO] Framework Data Type: %s" %(self._FDTYPE))        
        
    def init_app_manager(
        self, 
        app,
        app_name,
        output_dir,
        mixed_precision_support=False,
        mgpu_support=False
    ):
        super().init_app_manager(    
            app=app,
            app_name=app_name, 
            output_dir=output_dir, 
            mixed_precision_support=mixed_precision_support
        )

        # multi gpu support
        self.app_manager._MGPU_SUPPORT = mgpu_support
        if self._GLOBAL_RANK == 0:
            print("[INFO] App Supports MGPUs: %s" %(self.app_manager._MGPU_SUPPORT))

        self.__DDP_SETUP = False
        # if multiple GPUs are supported by the app
        if self.app_manager._MGPU_SUPPORT:
            # if no strategy selected
            if self._MGPU_STRATEGY is None:
                self._MGPU_SIZE = 1
                if self._GLOBAL_RANK == 0:
                    print("[INFO] Disabling Multi-GPU Support. To use multiple gpus, provide a valid Multi-GPU strategy (HVD/DDP) when initializing the framework.")
            # if horovod
            elif self._MGPU_STRATEGY == "HVD":
                if self._GLOBAL_RANK == 0:
                    print("[INFO (HVD)] Initializing Horovod")
                import horovod.torch as hvd_torch
                self.hvd_torch = hvd_torch
                self.hvd_torch.init()
                self._MGPU_SIZE = self.hvd_torch.size()
                self._LOCAL_RANK = self.hvd_torch.local_rank()
                self._GLOBAL_RANK = self.hvd_torch.rank()
                
                if self._GLOBAL_RANK == 0:
                    print("[INFO (HVD)] Rank %s of %s" %(self._GLOBAL_RANK, self._MGPU_SIZE))
                    print("[INFO (HVD)] Setting devices")
                # print(self._LOCAL_RANK)
                torch.cuda.set_device("cuda:" + str(self._LOCAL_RANK))

                # Horovod: limit # of CPU threads to be used per worker.
                torch.set_num_threads(1)
            elif self._MGPU_STRATEGY == "DDP":
                # On each node, discover the rank/size/local_rank with MPI:
                self._LOCAL_RANK, self._GLOBAL_RANK, self._MGPU_SIZE = self._setup_ddp()
                print("[INFO (DDP)] Running basic DDP example on local rank {}, rank {} of {}.".format(self._LOCAL_RANK, self._GLOBAL_RANK, self._MGPU_SIZE))
                print("[INFO (DDP)] Rank {} setup complete".format(self._GLOBAL_RANK))
                torch.cuda.set_device("cuda:" + str(self._LOCAL_RANK))
                self.__DDP_SETUP = True
            else:
                if self._GLOBAL_RANK == 0:
                    print("[INFO] Invalid Multi-GPU Strategy: %s" %(self._MGPU_STRATEGY))
        
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

        if self._MIXED_PRECISION and self.app_manager._MIXED_PRECISION_SUPPORT:
            # set floatx
            # print("[INFO] Mixed Precision:", self.app_manager._MIXED_PRECISION_SUPPORT)
            self.scaler = torch.cuda.amp.GradScaler(enabled=self._MIXED_PRECISION)

        # shard data files
        if self._MGPU_STRATEGY in ["HVD", "DDP"]:
            if self._GLOBAL_RANK == 0:
                print("[INFO] Sharding data files for %s" %(self._MGPU_STRATEGY))
            
            # splitter
            splitter = data_manager._N_TRAIN_FILES // self._MGPU_SIZE
            print("[INFO] Rank-%d: Training Files: %d, #Files/GPU: %d, Start Indx: %d, End Indx: %d" %(self._GLOBAL_RANK, data_manager._N_TRAIN_FILES, splitter, splitter*self._GLOBAL_RANK, splitter*(self._GLOBAL_RANK+1)))
            
            # divide training files
            data_manager._TRAIN_FILES = data_manager._TRAIN_FILES[splitter*self._GLOBAL_RANK:splitter*(self._GLOBAL_RANK+1)]
            data_manager._N_TRAIN_FILES = len(data_manager._TRAIN_FILES)
        
        # files handled by single GPU
        if self._GLOBAL_RANK == 0:
            print("[INFO] Number of training files (per GPU):", data_manager._N_TRAIN_FILES)
            print("[INFO] Number of validation files (per GPU):", data_manager._N_VAL_FILES)
        
        return data_manager

    def load_data(
        self,
        data_files,
        data_params,
        sampler=None,
        batch_size=1
    ):
        data_generator, dataloader = super().load_data(
            data_files,
            data_params=data_params,
            pin_memory=True,
            num_workers=self._N_CPUS,
            batch_size=batch_size
        )  
        if data_params["dataloader"] in ["graphloader"]:
            df_distance = pd.read_csv("/home/milanjain91/ProxyTSPRD/scripts/playground/models/graph/grid_graph.csv")
            n_nodes = data_generator.n_nodes

            sp_mx = coo_matrix(
                (df_distance["cost"].values, 
                (
                    df_distance["from"].values, 
                    df_distance["to"].values
                )), shape=(n_nodes, n_nodes)
            )
            G = dgl.from_scipy(sp_mx)
            G = dgl.add_self_loop(G)

            use_ddp = False
            batch_size=n_nodes
            distribute_graph = False
            if data_params["distribute_graph"]:
                if self._MGPU_STRATEGY == "DDP":
                    self._DDP_LR, self._DDP_GR, self._DDP_SIZE = self._LOCAL_RANK, self._GLOBAL_RANK, self._MGPU_SIZE
                else:
                    if not self.__DDP_SETUP:
                        self._DDP_LR, self._DDP_GR, self._DDP_SIZE = self._setup_ddp()
                        print("[INFO (DDP)] Running basic DDP example on local rank {}, rank {} of {}.".format(self._DDP_LR, self._DDP_GR, self._DDP_SIZE))
                        torch.cuda.set_device("cuda:" + str(self._DDP_LR))
                        self.__DDP_SETUP = True
                
                use_ddp = True
                batch_size=batch_size//self._DDP_SIZE
                distribute_graph = True
            if self._GLOBAL_RANK == 0:
                print("[INFO (DDP)] Distributing the graph:", distribute_graph)
            
            sampler = dgl.dataloading.NeighborSampler([data_generator.sel_neighbors, data_generator.sel_neighbors])
            graphloader = dgl.dataloading.DataLoader(
                # The following arguments are specific to DataLoader.
                graph=G,  # The graph
                indices=range(n_nodes),  # The node IDs to iterate over in minibatches
                graph_sampler=sampler,  # The neighbor sampler
                device=self._DEVICE,  # Put the sampled MFGs on CPU or GPU
                use_ddp=use_ddp,  # Make it work with distributed data parallel
                # The following arguments are inherited from PyTorch DataLoader.
                batch_size=batch_size,  # Per-device batch size.
                # The effective batch size is this number times the number of GPUs.
                shuffle=False,  # Whether to shuffle the nodes for every epoch
                drop_last=False,  # Whether to drop the last incomplete batch
                num_workers=0,  # Number of sampler processes
            )
            return dataloader, graphloader
        else:
            return dataloader, None

    def init_training_engine(
        self,
        model_name,
        model_dir,
        model_params,
        opt_params,
        criterion_params,
        infer_through=None,
        batch_size=1
    ):
        # if multi gpu strategy is DDP
        if self._MGPU_STRATEGY == "DDP":
            self._DEVICE = f'cuda:{self._LOCAL_RANK}'
        
        # check if model exists
        model_exists = super().init_training_engine(
            model_name=model_name,
            model_dir=model_dir,
            model_params=model_params,
            criterion_params=criterion_params,
            device=self._DEVICE
        )
        
        # load ddp if multi distribute strategy is DDP
        if self._MGPU_STRATEGY == "DDP":
            self.model.to(self._DEVICE)
            from torch.nn.parallel import DistributedDataParallel as DDP
            self.model = DDP(self.model, device_ids=[self._DEVICE])
            if self._GLOBAL_RANK == 0:
                print("[INFO (DDP)] Transforming model to DDP model.")
        else:
            self.model.to(self._DEVICE)
        
        # get optimizer
        self.optimizer = self.app_manager.get_opt(
            model_params=self.model.parameters(),
            opt_params=opt_params
        )
        
        # distribute optimizer if multi-gpu strategy is horovod
        if self._MGPU_STRATEGY == "HVD":
            if self._GLOBAL_RANK == 0:
                print("[INFO (HVD)] Distributing the optimizer and broadcasting parameters.")
            self.optimizer = self.hvd_torch.DistributedOptimizer(self.optimizer, named_parameters=self.model.named_parameters())
            
            self.hvd_torch.broadcast_parameters(self.model.state_dict(), root_rank=0)
            self.hvd_torch.broadcast_optimizer_state(self.optimizer, root_rank=0)

        if infer_through=="ait":
            assert self._DTYPE == "float16", "[ERROR] AIT can only be enabled with FP16."
            self.module= self.load_ait_module(
                data_params=model_params, 
                batch_size=batch_size, 
                device=self._DEVICE
            )
        
        return model_exists

    def train_loop(self, training_data, input_nodes=None, output_nodes=None, mfgs=None):
        # loop loss and number of batches
        loop_loss = torch.tensor(0.0, device=self._DEVICE)
        loop_batches = torch.tensor(0, device=self._DEVICE)

        # iterate over training data
        for i, (inputs, targets) in enumerate(training_data):
            # move input data to GPU
            inputs, targets  = inputs.to(self._DEVICE), targets.to(self._DEVICE)
            
            # for graph data
            if (input_nodes is not None) and (output_nodes is not None):
                inputs = inputs[:,:,:,input_nodes]
                targets = targets[:,:,:,output_nodes]
                
            # clear the gradients
            self.optimizer.zero_grad()#set_to_none=True)
            
            with torch.cuda.amp.autocast(enabled=self._MIXED_PRECISION):
                # compute the model output
                if mfgs is not None:
                    yhat = self.model(inputs, mfgs)
                else:
                    yhat = self.model(inputs)
                
                # calculate loss
                loss = self.criterion(yhat, targets)
            
            if self._MIXED_PRECISION:
                # credit assignment
                self.scaler.scale(loss).backward()
            
                if self._MGPU_STRATEGY == "HVD":
                    # Make sure all async allreduces are done
                    self.optimizer.synchronize()

                    # In-place unscaling of all gradients before weights update
                    self.scaler.unscale_(self.optimizer)
                    with self.optimizer.skip_synchronize():
                        self.scaler.step(self.optimizer)
                else:
                    self.scaler.step(self.optimizer)
                    
                # Update scaler in case of overflow/underflow
                self.scaler.update()
            else:
                # credit assignment
                loss.backward()
            
                # update model weights
                self.optimizer.step()
            
            # updating the loss
            loop_loss += loss
            loop_batches += 1

            # free cuda memory
            del inputs
            del targets
        
        return loop_loss, loop_batches

    def train(
        self,
        training_data,
        n_epochs,
        graphloader=None
    ):
        super().train()
        self.model.train()

        self._N_EPOCHS = n_epochs
        m_start = time.time()
        
        # collect loss, epoch time, and batch time
        all_loss = torch.zeros(self._N_EPOCHS).cpu()#, device=self._DEVICE) # []
        epoch_time = torch.zeros(self._N_EPOCHS).cpu()#, device=self._DEVICE) # []
        avg_batch_time = torch.zeros(self._N_EPOCHS).cpu()#, device=self._DEVICE) # []
        # total_loss = torch.empty(self._N_EPOCHS)
        
        # iterate through all the epoch
        for epoch in range(self._N_EPOCHS):
            total_loss = 0.0#, device=self._DEVICE)
            num_batches = 0#, device=self._DEVICE)
            
            epoch_start_time = time.time()
            
            # go through all the batches generated by dataloader
            if graphloader is None:
                # for non-euclidean data
                # compute loss
                loop_loss, loop_batches = self.train_loop(training_data)
                
                # total loss and number of batches
                total_loss += loop_loss * loop_batches
                num_batches += loop_batches
            else:
                # for graph data
                for input_nodes, output_nodes, mfgs in graphloader:
                    # compute loss
                    loop_loss, loop_batches = self.train_loop(training_data, input_nodes, output_nodes, mfgs)
                
                    # total loss and number of batches
                    total_loss += loop_loss * loop_batches
                    num_batches += loop_batches
            
            epoch_stop_time = time.time()
            all_loss[epoch] = total_loss / num_batches
            epoch_time[epoch] = epoch_stop_time-epoch_start_time
            avg_batch_time[epoch] = epoch_time[epoch] / num_batches
            
            # print("Local Rank:", self._LOCAL_RANK)
            if self._GLOBAL_RANK == 0:
                print("[INFO] Epoch (", epoch+1, "/", self._N_EPOCHS, "): MSE: ", all_loss[epoch])
                
        m_stop = time.time()
        model_training_time = torch.tensor([m_stop - m_start]).to(self._DEVICE)
        all_loss = all_loss.detach()
        if self._GLOBAL_RANK == 0:
            print("============> (Before Sync) Training Time: ", model_training_time)
            print("============> (Before Sync) Training Loss: ", all_loss)
        
        # sum of all the times
        # horovod
        if self._MGPU_STRATEGY == "HVD":
            # sync training time
            model_training_time = self.hvd_torch.allreduce(model_training_time)
            # sync loss
            all_loss = [self.hvd_torch.allreduce(l, average=True) for l in all_loss]
        # ddp
        elif self._MGPU_STRATEGY == "DDP":
            # sync training time
            dist.all_reduce(model_training_time, op=dist.ReduceOp.SUM)
            model_training_time = model_training_time / self._MGPU_SIZE
            # sync loss
            for l in all_loss: 
                dist.all_reduce(l, op=dist.ReduceOp.SUM)
            all_loss = [l / self._MGPU_SIZE for l in all_loss]
            
        if self._GLOBAL_RANK == 0:
            print("============> (After Sync) Training Time: ", model_training_time)
            print("============> (After Sync) Training Loss: ", all_loss)
            
            # save model
            print("[INFO] Model Path: %s" %(self._MODEL_PATH))
            if self._MGPU_STRATEGY == "DDP":
                torch.save(self.model.module.state_dict(), self._MODEL_PATH)
            else:
                if self._GLOBAL_RANK == 0:
                    torch.save(self.model.state_dict(), self._MODEL_PATH)

        if self._MGPU_STRATEGY == "DDP":
            dist.barrier()
            dist.destroy_process_group() 

        
    def infer_on_data(
            self, test_data, infer_through, batch_size=1,
            input_nodes=None, output_nodes=None, mfgs=None
        ):
        # loss and accuracy
        num_samples = 0
        test_loss = 0.
        
        for inputs, target in test_data:
            # process only complete batches
            if inputs.shape[0] == batch_size:
                # compute output and loss
                if infer_through=="ait":
                    if (input_nodes is not None) or (output_nodes is not None) or (mfgs is not None):
                        raise NotImplementedError("AIT is not supported for Graph data.")
                    
                    inputs = {"X": inputs.permute(0, 2, 3, 1).to(self._DEVICE).contiguous()}
                    yhat = torch.empty(target.shape).to(self._DEVICE).contiguous()
                    outputs = {"Y": yhat}
                    self.module.run_with_tensors(inputs, outputs, graph_mode=True)

                elif infer_through=="onnx":
                    if (input_nodes is not None) or (output_nodes is not None) or (mfgs is not None):
                        raise NotImplementedError("ONNX is not supported for Graph data.")
                    
                    y_onnx = self.sess.run(["output"], dict({"input": inputs.numpy()}))
                    yhat = torch.tensor(y_onnx[0])#.to(self._DEVICE)
                    # print("[INFO (ONNX)] Inferred through ONNX")
                else:
                    # move data to GPU
                    inputs = inputs.to(self._DEVICE)
                    target = target.to(self._DEVICE)
                    # print(self.batch_size, inputs.shape)
                    
                    # for graph data
                    if (input_nodes is not None) and (output_nodes is not None):
                        inputs = inputs[:,:,:,input_nodes]
                        target = target[:,:,:,output_nodes]
                        
                    with torch.cuda.amp.autocast(enabled=self._MIXED_PRECISION):
                        # compute the model output
                        if mfgs is not None:
                            yhat = self.model(inputs, mfgs)
                        else:
                            yhat = self.model(inputs)

                # calculate loss
                # print(yhat.device)
                # print(target.device)
                # print(test_loss.device)
                test_loss += self.criterion(yhat, target).item()

                # calculate the number of samples
                num_samples += 1
            
            # free cuda memory
            del inputs
            del target

        return test_loss, num_samples
        
            
    def infer(
        self,
        data,
        infer_through=None,
        batch_size=1,
        graphloader=None
    ):
        super().infer()

        if infer_through=="onnx":
            self.criterion = self.app_manager.get_criterion(criterion_params={})
        
        # go through all the batches generated by dataloader
        start_time = time.perf_counter()
        if graphloader is None:
            test_loss, num_samples = self.infer_on_data(
                data, 
                infer_through=infer_through,
                batch_size=batch_size
            )
        else:
            # for graph data
            test_loss = 0
            num_samples = 0
            for input_nodes, output_nodes, mfgs in graphloader:
                graph_loss, graph_samples = self.infer_on_data(
                    data, 
                    infer_through=infer_through,
                    batch_size=batch_size, 
                    input_nodes=input_nodes, 
                    output_nodes=output_nodes, 
                    mfgs=mfgs
                )

                # total loss and number of batches
                test_loss += graph_loss
                num_samples += graph_samples
        
        end_time = time.perf_counter()
        inf_time = end_time - start_time
        if self._GLOBAL_RANK == 0:
            print("============> (Before Sync) Inference Time: ", inf_time)
            print("============> (Before Sync) Inference Loss: ", test_loss / num_samples)

        # sum of all the times
        if self._MGPU_STRATEGY == "HVD":
            inf_time = self.hvd_torch.allreduce(inf_time)
            # print("[INFO (HVD)] Total Training Time", model_training_time)
        elif self._MGPU_STRATEGY == "DDP":
            dist.all_reduce(inf_time, op=dist.ReduceOp.SUM)
            inf_time = inf_time / self._MGPU_SIZE
        
        if self._GLOBAL_RANK == 0:
            print("============> (After Sync) Inference Time: ", inf_time)
            print("============> (After Sync) Inference Loss: ", test_loss / num_samples)

    def close(self):
        if self._MGPU_STRATEGY == "HVD":
            self.hvd_torch.shutdown()

    def _discover_local_rank(self, verbose=False):
        '''
        This function written by Corey Adams, ALCF
        Feel free to modify or use the code below as you need.
        '''
        from mpi4py import MPI
        # Get the global communicator:
        COMM_WORLD = MPI.COMM_WORLD


        # The strategy here is to split into sub communicators
        # Each sub communicator will be just on a single host,
        # And that communicator will assign ranks that can be interpretted
        # as local ranks.

        # To subdivide, each host will need to use a unique key.
        # We'll rely on the hostname and order them all.

        hostname = socket.gethostname()
        # host_key = host_key %
        all_hostnames = COMM_WORLD.gather(hostname, root=0)

        if COMM_WORLD.Get_rank() == 0:
            # Order all the hostnames, and find unique ones
            unique_hosts = np.unique(all_hostnames)
            # Numpy automatically sorts them.
        else:
            unique_hosts = None

        # Broadcast the list of hostnames:
        unique_hosts = COMM_WORLD.bcast(unique_hosts, root=0)

        # Find the integer for this host in the list of hosts:
        i = int(np.where(unique_hosts == hostname)[0])
        # print(f"{hostname} found itself at index {i}")

        new_comm = COMM_WORLD.Split(color=i)
        if verbose:
            print("[INFO (DDP)] Global rank {} of {} mapped to local rank {} of {} on host {}".format(COMM_WORLD.Get_rank(), COMM_WORLD.Get_size(), new_comm.Get_rank(), new_comm.Get_size(), hostname))

        # The rank in the new communicator - which is host-local only - IS the local rank:
        return new_comm.Get_rank()


    def _setup_ddp(self):
        from mpi4py import MPI
                
        size = MPI.COMM_WORLD.Get_size()
        rank = MPI.COMM_WORLD.Get_rank()

        local_rank_key_options = [
                'OMPI_COMM_WORLD_LOCAL_RANK',
                'MV2_COMM_WORLD_LOCAL_RANK',
                'MPI_LOCALRANKID',
                'PMI_LOCAL_RANK',
                ]

        # testable default value:
        local_rank = None
        for key in local_rank_key_options:
            if key in os.environ:
                local_rank = os.environ[key]
                if self._GLOBAL_RANK == 0:
                    print("[INFO (DDP)] Determined local rank through environment variable {}".format(key))
                break
        if local_rank is None:
            # Try the last-ditch effort of home-brewed local rank deterimination
            # This needs to be a collective call!
            try:
                local_rank = self._discover_local_rank()
            except:
                # logger.error("Can not determine local rank for DDP")
                raise Exception("[INFO (DDP)] DDP failed to initialize due to local rank issue")


        os.environ["RANK"] = str(rank)
        os.environ["WORLD_SIZE"] = str(size)

        # It will want the master address too, which we'll broadcast:
        if rank == 0:
            master_addr = socket.gethostname()
            sock = socket.socket()
            sock.bind(('',0))
            master_port  = sock.getsockname()[1]
            master_port  = 2345
        else:
            master_addr = None
            master_port = None
        # logger.info(f"DDP Using master IP {master_addr}")
        master_addr = MPI.COMM_WORLD.bcast(master_addr, root=0)
        master_port = MPI.COMM_WORLD.bcast(master_port, root=0)
        os.environ["MASTER_ADDR"] = master_addr
        os.environ["MASTER_PORT"] = str(master_port)

        backend = 'nccl'
        init_method = 'env://'

        dist.init_process_group(
            backend     = backend,
            init_method = init_method,
            world_size  = size,
            rank        = rank,
            timeout     = datetime.timedelta(seconds=120)
        )

        return local_rank, rank, size       






    

