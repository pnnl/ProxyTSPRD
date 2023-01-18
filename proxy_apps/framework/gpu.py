import os
import sys
import time
import socket
import datetime
import numpy as np

import torch
import torch.distributed as dist

import tensorflow as tf

from . import PyTorchInterface, TensorFlowInterface
from . import DataHandler
from .main import Framework

class GPU(Framework):
    def __init__(
        self, 
        machine_name,
        n_gpus=0,
        n_cpus=0, # means all available CPUs
        mgpu_strategy=None,
        mixed_precision=False,
        dtype="fp64"
    ) -> None:
        # machine name
        super().__init__(machine_name)#, config_file, n_epochs, batch_size)
        
        # number of GPUs and CPUs
        self._N_GPUS = n_gpus
        self._N_CPUS = n_cpus

        self._MGPU_STRATEGY = mgpu_strategy
        self._MIXED_PRECISION = mixed_precision

        self._DTYPE = dtype

    def use_pytorch(self):
        super().use_pytorch()

        interface = PyTorchInterfaceGPU(
            n_gpus=self._N_GPUS,
            n_cpus=self._N_CPUS,
            mgpu_strategy=self._MGPU_STRATEGY,
            mixed_precision=self._MIXED_PRECISION,
            dtype=self._DTYPE
        )

        return interface

    def use_tensorflow(self):
        super().use_tensorflow()

        interface = TensorFlowInterfaceGPU(
            n_gpus=self._N_GPUS,
            n_cpus=self._N_CPUS,
            mgpu_strategy=self._MGPU_STRATEGY,
            mixed_precision=self._MIXED_PRECISION,
            dtype=self._DTYPE
        )

        return interface

class PyTorchInterfaceGPU(PyTorchInterface):
    def __init__(
        self,
        n_gpus,
        n_cpus,
        mgpu_strategy,
        mixed_precision,
        dtype
        # profiling
    ) -> None:
        super().__init__()

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

        # if multiple GPUs are supported by the app
        if self.app_manager._MGPU_SUPPORT:
            # if no strategy selected
            if self._MGPU_STRATEGY is None:
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
        return super().load_data(
            data_files,
            data_params=data_params,
            pin_memory=True,
            num_workers=self._N_CPUS,
            sampler=sampler,
            batch_size=batch_size
        )  

    def init_training_engine(
        self,
        model_name,
        model_dir,
        data_params,
        opt_params,
        criterion_params
    ):
        if self._MGPU_STRATEGY == "DDP":
            self._DEVICE = f'cuda:{self._LOCAL_RANK}'
        
        model_exists = super().init_training_engine(
            model_name=model_name,
            model_dir=model_dir,
            data_params=data_params,
            criterion_params=criterion_params,
            device=self._DEVICE
        )
        
        if self._MGPU_STRATEGY == "DDP":
            self.model.to(self._DEVICE)
            from torch.nn.parallel import DistributedDataParallel as DDP
            self.model = DDP(self.model, device_ids=[self._DEVICE])
            if self._GLOBAL_RANK == 0:
                print("[INFO (DDP)] Transforming model to DDP model.")
        else:
            self.model.to(self._DEVICE)
        
        self.optimizer = self.app_manager.get_opt(
            model_params=self.model.parameters(),
            opt_params=opt_params
        )
        # if self.opt_name == "SGD":
        #     self.optimizer = torch.optim.SGD(
        #         self.model.parameters(), 
        #         lr=opt_params["learning_rate"]
        #     )
        # else:
        #     self.optimizer = torch.optim.Adagrad(
        #         self.model.parameters(), 
        #         lr=opt_params["learning_rate"]
        #     )

        if self._MGPU_STRATEGY == "HVD":
            if self._GLOBAL_RANK == 0:
                print("[INFO (HVD)] Distributing the optimizer and broadcasting parameters.")
            self.optimizer = self.hvd_torch.DistributedOptimizer(self.optimizer, named_parameters=self.model.named_parameters())
            
            self.hvd_torch.broadcast_parameters(self.model.state_dict(), root_rank=0)
            self.hvd_torch.broadcast_optimizer_state(self.optimizer, root_rank=0)

        return model_exists

    def train(
        self,
        training_data,
        n_epochs
    ):
        super().train()

        self._N_EPOCHS = n_epochs
        m_start = time.time()
        
        # iterate through all the epoch
        all_loss = torch.zeros(self._N_EPOCHS, device=self._DEVICE) # []
        epoch_time = torch.zeros(self._N_EPOCHS, device=self._DEVICE) # []
        avg_batch_time = torch.zeros(self._N_EPOCHS, device=self._DEVICE) # []
        # total_loss = torch.empty(self._N_EPOCHS)
        
        for epoch in range(self._N_EPOCHS):
            total_loss = torch.tensor(0.0, device=self._DEVICE)
            num_batches = torch.tensor(0, device=self._DEVICE)
            
            epoch_start_time = time.time()
            # go through all the batches generated by dataloader
            for i, (inputs, targets) in enumerate(training_data):
                # if i > 100: break
                # move data to GPU
                # print(inputs.shape, targets.shape)
                inputs, targets        = inputs.to(self._DEVICE), targets.to(self._DEVICE)
                
                # clear the gradients
                self.optimizer.zero_grad()#set_to_none=True)
                
                with torch.cuda.amp.autocast(enabled=self._MIXED_PRECISION):
                    # compute the model output
                    yhat = self.model(inputs)
                    
                    # calculate loss
                    loss = self.criterion(yhat, targets)
                
                if self._MIXED_PRECISION:
                    # credit assignment
                    self.scaler.scale(loss).backward()
                
                    if self._MGPU_STRATEGY == "HVD":
                        # if self._GLOBAL_RANK == 0:
                        #     print("[INFO (HVD)] Synchronizing and scaling the model parameters.")
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
                total_loss += loss
                num_batches += 1
                
            epoch_stop_time = time.time()
            all_loss[epoch] = total_loss / num_batches
            epoch_time[epoch] = epoch_stop_time-epoch_start_time
            avg_batch_time[epoch] = epoch_time[epoch] / num_batches
            
            # print("Local Rank:", self._LOCAL_RANK)
            if self._GLOBAL_RANK == 0:
                print("[INFO] Epoch (", epoch+1, "/", self._N_EPOCHS, "): MSE: ", all_loss[epoch])
                
        m_stop = time.time()
        model_training_time = torch.tensor([m_stop - m_start]).to(self._DEVICE)
        if self._GLOBAL_RANK == 0:
            print("============> (Before) Model Fitting: ", model_training_time)
        # sum of all the times
        if self._MGPU_STRATEGY == "HVD":
            model_training_time = self.hvd_torch.allreduce(model_training_time)
            # print("[INFO (HVD)] Total Training Time", model_training_time)
        elif self._MGPU_STRATEGY == "DDP":
            dist.all_reduce(model_training_time, op=dist.ReduceOp.SUM)
            model_training_time = model_training_time / self._MGPU_SIZE
        
        if self._GLOBAL_RANK == 0:
            print("============> (After) Model Fitting: ", model_training_time)
            
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

        
    def infer(
        self,
        data,
        data_params,
        ait=False,
        batch_size=1,
        device=None
    ):
        super().infer()

        start_time = time.perf_counter()
        
        # loss and accuracy
        num_samples = 0
        test_loss = 0.
        # print(data_params)

        if ait:
            module= self.load_ait_module(data_params=data_params, batch_size=batch_size, device=device)
        
        # go through all the batches generated by dataloader
        for inputs, target in data:
            # move data to GPU
            inputs, target        = inputs.to(self._DEVICE), target.to(self._DEVICE)
            # print(self.batch_size, inputs.shape)

            # compute output and loss
            if ait:
                inputs = {"X": inputs[:, -3:, :].permute(0, 2, 1)}
                yhat = torch.empty(target.shape).cuda()
                outputs = {"Y": yhat}
                module.run_with_tensors(inputs, outputs, graph_mode=True)
            else:
                with torch.cuda.amp.autocast(enabled=self._MIXED_PRECISION):
                    # compute the model output
                    yhat = self.model(inputs)
                
            # calculate loss
            test_loss += self.criterion(yhat, target).item() 

            # calculate the number of samples
            num_samples += 1
        
        end_time = time.perf_counter()
        inf_time = end_time - start_time
        if self._GLOBAL_RANK == 0:
            print("============> (After) Inference Time: ", inf_time)
            print("============> (After) Test Loss: ", test_loss / num_samples)

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

class TensorFlowInterfaceGPU(TensorFlowInterface):
    def __init__(
        self,
        n_gpus,
        n_cpus,
        mgpu_strategy,
        mixed_precision,
        dtype
    ) -> None:
        super().__init__()

        # setup devices
        self._setup_devices(n_gpus, n_cpus, mgpu_strategy)

        # setup default data type
        self._setup_default_dtype(dtype)

        # mixed precision - could be moved to Interface because it is required for both GPU and RDU; and for both TF and PT
        self._MIXED_PRECISION = mixed_precision

        # enable profiling - could be moved to Interface because it is required for both GPU and RDU; and for both TF and PT
        # self._PROFILING = profiling

        # sys.exit("Helloooo")
    
    def _setup_devices(self, n_gpus, n_cpus, mgpu_strategy):
        # os.environ['TF_XLA_FLAGS']="--tf_xla_auto_jit=2 --tf_xla_cpu_global_jit"
        # os.environ['XLA_FLAGS']="--xla_gpu_cuda_data_dir=/share/apps/cuda/11.0/"
        os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"  # to avoid gpu contention
        os.environ['TF_CUDNN_DETERMINISTIC']='1'
        if self._GLOBAL_RANK == 0:
            print("[INFO] Global variables set")
        
        # number of GPUs and CPUs
        self._N_GPUS = n_gpus
        self._N_CPUS = n_cpus
        self._MGPU_STRATEGY = None
        
        # physical gpus
        gpus = tf.config.experimental.list_physical_devices('GPU')
        self.GPUS = gpus
        for gpu in gpus:
            print("[INFO] Name:", gpu.name, "  Type:", gpu.device_type)
            tf.config.experimental.set_memory_growth(gpu, True)

        # enable GPU, when GPU is available and needed
        self._DEVICE_STR = 'cpu'
        if len(gpus) > 0: 
            self._DEVICE_STR = 'cuda'  
            
        if self._GLOBAL_RANK == 0:
            print("[INFO] Device Type: %s" %(self._DEVICE_STR))
        
        # eager mode
        # tf.compat.v1.disable_eager_execution()
        if self._GLOBAL_RANK == 0:
            print("[INFO] Eager mode: ", tf.executing_eagerly())  # For easy reset of notebook state.

        # backend and JIT compilation
        tf.keras.backend.clear_session()
        # if self._LABEL not in ["Baseline"]: tf.config.optimizer.set_jit(True) # Enable XLA.

        # if GPUs are not available or if GPUs are not selected
        if self._DEVICE_STR=='cpu': 
            if self._GLOBAL_RANK == 0:
                print("[WARNING] No GPUs found, falling back to CPUs")
        # if GPUs are available and selected
        elif self._DEVICE_STR=='cuda':
            # gpus found - using multi gpu strategy
            self._MGPU_STRATEGY = mgpu_strategy
            
            self._TOTAL_GPUs = len(gpus)
            # do we have the number of GPUs we are asking for
            if self._N_GPUS > self._TOTAL_GPUs:
                if self._GLOBAL_RANK == 0:
                    print("[WARNING] Selected %d GPUs but only %d GPUs found. Using max #GPUs available: %d" %(self._N_GPUS, self._TOTAL_GPUs, self._TOTAL_GPUs))
            else:
                if self._GLOBAL_RANK == 0:
                    print("[INFO] Using %d/%d GPUs" %(self._N_GPUS, self._TOTAL_GPUs))

    def _setup_default_dtype(self, dtype):
        # set default data type
        if dtype == "int":
            self._FDTYPE = tf.int32
            self._DTYPE = "int32"
        elif dtype == "fp16":
            self._FDTYPE = tf.float16
            self._DTYPE = "float16"
            tf.keras.backend.set_floatx(self._DTYPE)
        elif dtype == "fp32":
            self._FDTYPE = tf.float32
            self._DTYPE = "float32"
            tf.keras.backend.set_floatx(self._DTYPE)
        elif dtype == "fp64":
            self._FDTYPE = tf.float64
            self._DTYPE = "float64"
            tf.keras.backend.set_floatx(self._DTYPE)
        elif dtype == "amp":
            self._FDTYPE = tf.float32
            self._DTYPE = "float32"
            tf.keras.backend.set_floatx(self._DTYPE)
            # set policy
            policy = tf.keras.mixed_precision.Policy('mixed_float16')
            tf.keras.mixed_precision.set_global_policy(policy)

            # check dtypes
            print("[INFO] Enabling Mixed Precision")
            print('[INFO] Compute dtype: %s' % policy.compute_dtype)
            print('[INFO] Variable dtype: %s' % policy.variable_dtype)
        
        if dtype != "amp": 
            tf.keras.backend.set_floatx(self._DTYPE)
        
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

        # if multiple GPUs are supported by the app
        if self.app_manager._MGPU_SUPPORT:
            # if no strategy selected
            if self._MGPU_STRATEGY is None:
                if self._GLOBAL_RANK == 0:
                    print("[INFO] Disabling Multi-GPU Support. To use multiple gpus, provide a valid Multi-GPU strategy (HVD/DDP) when initializing the framework.")
            # if horovod
            elif self._MGPU_STRATEGY == "HVD":
                if self._GLOBAL_RANK == 0:
                    print("[INFO (HVD)] Initializing Horovod")
                import horovod.tensorflow.keras as hvd_keras
                self.hvd_keras = hvd_keras
                self.hvd_keras.init()
                self._MGPU_SIZE = self.hvd_keras.size()
                self._LOCAL_RANK = self.hvd_keras.local_rank()
                self._GLOBAL_RANK = self.hvd_keras.rank()
                if self._GLOBAL_RANK == 0:
                    print("[INFO (HVD)] Rank %s of %s" %(self._GLOBAL_RANK, self._MGPU_SIZE))
                    print("[INFO (HVD)] Setting devices")
            else:
                if self._GLOBAL_RANK == 0:
                    print("[INFO] Invalid Multi-GPU Strategy: %s" %(self._MGPU_STRATEGY))

            if self.GPUS and (self._MGPU_STRATEGY == "HVD"):
                tf.config.experimental.set_visible_devices(self.GPUS[self._LOCAL_RANK], 'GPU')

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

        # shard data files
        if self._MGPU_STRATEGY in ["HVD"]:
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
        return super().load_data(
            data_files,
            data_params=data_params,
            batch_size=batch_size
        ) 

    def init_training_engine(
        self,
        model_name,
        model_dir,
        data_params,
        opt_params,
        criterion_params
    ):
        model_exists = super().init_training_engine(
            model_name=model_name,
            model_dir=model_dir,
            data_params=data_params,
            criterion_params=criterion_params
        )

        self.optimizer = self.app_manager.get_opt(
            opt_params=opt_params
        ) 

        # if horovod - distributed optimizer
        if self._MGPU_STRATEGY == "HVD":
            print("[INFO (HVD)] Distributing the optimizer.")
            self.optimizer = self.hvd_keras.DistributedOptimizer(
                self.optimizer,
                backward_passes_per_step=1,
                average_aggregated_gradients=True
            )

        # mixed precision optimizer
        if self._MIXED_PRECISION: 
            print("[INFO (HVD)] Enabling mixed precision in optimizer.")
            self.optimizer = tf.keras.mixed_precision.LossScaleOptimizer(self.optimizer)

        # compile model
        self.model.compile(
            loss=self.criterion,
            optimizer=self.optimizer,
            metrics=[self.criterion],
            experimental_run_tf_function=False
        )

        self.callbacks = []
        if self._MGPU_STRATEGY == "HVD":
            self.callbacks.append(self.hvd_keras.callbacks.BroadcastGlobalVariablesCallback(0))
            self.callbacks.append(self.hvd_keras.callbacks.MetricAverageCallback())

        return model_exists

    def train(
        self,
        training_data,
        n_epochs
    ):
        super().train()
        
        m_start = time.time()
        history = self.model.fit(
            training_data,
            # steps_per_epoch=steps_per_epoch,
            epochs=n_epochs,
            callbacks=self.callbacks,
            # workers=16,
            # use_multiprocessing=True,
            verbose=1 if self._GLOBAL_RANK==0 else 0
        )
        m_stop = time.time()
        model_training_time = m_stop - m_start
        if self._GLOBAL_RANK == 0:
            print("============> (Before) Model Fitting: ", model_training_time)
        
        all_loss = history.history['loss']

        if self._MGPU_STRATEGY == "HVD":
            avg_model_training_time = self.hvd_keras.allreduce(model_training_time, average=True).numpy()
            avg_all_loss = [self.hvd_keras.allreduce(l, average=True).numpy() for l in all_loss]
        else:
            avg_model_training_time = model_training_time
            avg_all_loss = all_loss

        if self._GLOBAL_RANK == 0:
            print("============> (After) Model Fitting: ", avg_model_training_time)
            print("============> (After) Model Loss: ", avg_all_loss)
            
            # save model
            print("Model Path: %s" %(self._MODEL_PATH))
        
        # save model
        if self._MGPU_STRATEGY == "HVD":
            if self.hvd_keras.rank() == 0:
                self.model.save_weights(self._MODEL_PATH)
        else:
            self.model.save_weights(self._MODEL_PATH)

    def infer(
        self,
        data,
        data_params,
        ait=False,
        batch_size=1,
        device=None
    ):
        super().infer()

        start_time = time.perf_counter()
        
        # loss and accuracy
        start_time = time.perf_counter()
        loss, acc = self.model.evaluate(
            data,
            verbose=1 if self._GLOBAL_RANK==0 else 0
        )
        end_time = time.perf_counter()
        inf_time = end_time - start_time
        if self._GLOBAL_RANK == 0:
            print("============> (Before) Inference Time: ", inf_time)

        if self._MGPU_STRATEGY == "HVD":
            avg_inference_time = self.hvd_keras.allreduce(inf_time, average=True).numpy()
            avg_loss = self.hvd_keras.allreduce(loss, average=True).numpy()
            avg_accuracy = self.hvd_keras.allreduce(acc, average=True).numpy()
        else:
            avg_inference_time = inf_time
            avg_loss = loss
            avg_accuracy = acc
        
        if self._GLOBAL_RANK == 0:
            print("============> (After) Inference Time: ", avg_inference_time)
            print("============> (After) Inference Loss: ", avg_loss)
            print("============> (After) Inference Accuracy: ", avg_accuracy)

    def close(self):
        if self._MGPU_STRATEGY == "HVD":
            self.hvd_keras.shutdown()
        
        

    
            
        


        
            

    