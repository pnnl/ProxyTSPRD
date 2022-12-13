import os
import time
import socket
import datetime
import numpy as np

import torch
import torch.distributed as dist

from .import PyTorchInterface
from .import DataHandler
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
                print(self._LOCAL_RANK)
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
        data_manager,
        train_files=-1,
        test_files=0,
        val_files=0,
        shuffle=False
    ):
        super().init_data_manager(
            data_dir=data_dir,
            file_format=file_format,
            data_manager=data_manager,
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
                print("[INFO] Sharding data files for Horovod")
            
            # splitter
            splitter = self.data_manager._N_TRAIN_FILES // self._MGPU_SIZE
            print(self.data_manager._N_TRAIN_FILES, splitter, splitter*self._GLOBAL_RANK, splitter*(self._GLOBAL_RANK+1))
            
            # divide training files
            self.data_manager._TRAIN_FILES = self.data_manager._TRAIN_FILES[splitter*self._GLOBAL_RANK:splitter*(self._GLOBAL_RANK+1)]
            self.data_manager._N_TRAIN_FILES = len(self.data_manager._TRAIN_FILES)
        
        # files handled by single GPU
        if self._GLOBAL_RANK == 0:
            print("[INFO] Number of training files (per GPU):", self.data_manager._N_TRAIN_FILES)
            print("[INFO] Number of validation files (per GPU):", self.data_manager._N_VAL_FILES)

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
        
        super().init_training_engine(
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
                            self.model.parameters(),
                            opt_params
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
            print("Model Path: %s" %(self._MODEL_PATH))
            if self._MGPU_STRATEGY == "DDP":
                torch.save(self.model.module.state_dict(), self._MODEL_PATH)
            else:
                torch.save(self.model.state_dict(), self._MODEL_PATH)

        if self._MGPU_STRATEGY == "DDP":
            dist.barrier()
            dist.destroy_process_group() 

        
    def infer(
        self,
        data
    ):
        super().infer()

        start_time = time.perf_counter()
        
        # loss and accuracy
        num_samples = 0
        test_loss = 0.
        test_accuracy = 0.
        
        # go through all the batches generated by dataloader
        for inputs, target in data:
            # move data to GPU
            inputs, target        = inputs.to(self._DEVICE), target.to(self._DEVICE)

            # compute output and loss
            with torch.cuda.amp.autocast(enabled=self._MIXED_PRECISION):
                # compute the model output
                yhat = self.model(inputs)

                # calculate loss
                # print(yhat.is_cuda, targets.is_cuda, targets)
                # loss = self.criterion(yhat, targets)
                # sum up batch loss
                test_loss += self.criterion(yhat, target).item() # torch.nn.functional.nll_loss(yhat, target, size_average=False).item()
                pred = yhat.data.max(1, keepdim=True)[1]
                if self._MODEL_NAME in ["ResNet50"]: 
                    test_accuracy += (pred.eq(target.data.view_as(pred)).cpu().float().sum() / self._BATCH_SIZE)

            # calculate the number of samples
            num_samples += 1
        
        end_time = time.perf_counter()
        inf_time = end_time - start_time
        print("============> Inference Time: ", inf_time)

        # return self.model(data)

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

    # def load_data(
    #     self,
    #     data_reader
    # ):
    #     # call parent
    #     super().load_data()

    #     # load data
    #     dh_start = time.time()
    #     data_handler = DataHandler(
    #         handler_name=self._DATA_GENERATOR_NAME,
    #         handler_params=self.config["data_params"], 
    #         dtype=self._DTYPE, 
    #         training_files=self._TRAINING_FILES, 
    #         validation_files=self._VALIDATION_FILES
    #     )
        
    #     if self._FILE_FORMAT == "npz":
    #         data_dict = data_handler.load_data()
    #     else:
    #         x_indexer = data_handler.get_indexer(self.config["data_params"]["n_rows"],
    #                                      self.config["data_params"]["look_back"],
    #                                      self.config["data_params"]["shift_size"],
    #                                      0,
    #                                      self.config["data_params"]["n_signals"]+self.config["data_params"]["look_forward"]
    #                                      )
    #         y_indexer = data_handler.get_indexer(self.config["data_params"]["n_rows"],
    #                                      self.config["data_params"]["look_forward"],
    #                                      self.config["data_params"]["shift_size"],
    #                                      self.config["data_params"]["look_back"],
    #                                      self.config["data_params"]["n_signals"]
    #                                      )
    #         # print("Indices....................", x_indexer, y_indexer)

    #         data_dict = data_handler.load_data(x_indexer, y_indexer)
    #     dh_stop = time.time()
    #     print(data_dict)

    #     # loading time
    #     data_loading_time = dh_stop-dh_start
    #     if self._MGPU_STRATEGY == "HVD":
    #         avg_data_loading_time = avg_data_loading_time = data_loading_time
    #         # self.hvd_torch.allreduce(torch.tensor(data_loading_time), average=True).numpy()
    #     else:
    #         avg_data_loading_time = data_loading_time