import time
import torch
import torch.distributed as dist

from .import PyTorchInterface
from .import DataHandler
from .main import Framework

class GPU(Framework):
    def __init__(
        self, 
        machine_name,
        n_gpus,
        n_cpus,
        mgpu_strategy=None,
        mixed_precision=False
    ) -> None:
        # machine name
        super().__init__(machine_name)#, config_file, n_epochs, batch_size)
        
        # number of GPUs and CPUs
        self._N_GPUS = n_gpus
        self._N_CPUS = n_cpus

        self._MGPU_STRATEGY = mgpu_strategy
        self._MIXED_PRECISION = mixed_precision

    def use_pytorch(self):
        super().use_pytorch()

        interface = PyTorchInterfaceGPU(
            n_gpus=self._N_GPUS,
            n_cpus=self._N_CPUS,
            mgpu_strategy=self._MGPU_STRATEGY,
            mixed_precision=self._MIXED_PRECISION
        )

        return interface

class PyTorchInterfaceGPU(PyTorchInterface):
    def __init__(
        self,
        n_gpus,
        n_cpus,
        mgpu_strategy,
        mixed_precision,
        # profiling
    ) -> None:
        super().__init__()#machine_name, data_type, n_epochs, batch_size)

        # number of GPUs and CPUs
        self._N_GPUS = n_gpus
        self._N_CPUS = n_cpus
        self._MGPU_STRATEGY = None
        
        # check for GPU
        if torch.cuda.is_available(): 
            self._DEVICE_STR = 'cuda'  
        else: 
            self._DEVICE_STR = 'cpu'
        self._DEVICE = torch.device(self._DEVICE_STR)
        print("[INFO] Device Type: %s" %(self._DEVICE))

        if self._DEVICE_STR=='cpu': 
            print("[WARNING] No GPUs found, falling back to CPUs")
        elif self._DEVICE_STR=='cuda':
            # gpus found - using multi gpu strategy
            self._MGPU_STRATEGY = mgpu_strategy
            
            self._TOTAL_GPUs = torch.cuda.device_count()
            # do we have the number of GPUs we are asking for
            if self._N_GPUS > self._TOTAL_GPUs:
                print("[WARNING] Selected %d GPUs but only %d GPUs found. Using max #GPUs available: %d" %(self._N_GPUS, self._TOTAL_GPUs, self._TOTAL_GPUs))
            else:
                print("[INFO] Using %d/%d GPUs" %(self._N_GPUS, self._TOTAL_GPUs))

        # # mixed precision - could be moved to Interface because it is required for both GPU and RDU; and for both TF and PT
        self._MIXED_PRECISION = mixed_precision

        # # enable profiling - could be moved to Interface because it is required for both GPU and RDU; and for both TF and PT
        # self._PROFILING = profiling

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
        print("[INFO] App Supports MGPUs (using %s): %s" %(self._MGPU_STRATEGY, self.app_manager._MGPU_SUPPORT))

        # if multiple GPUs are supported by the app
        if self.app_manager._MGPU_SUPPORT:
            # if horovod
            if self._MGPU_STRATEGY == "HVD":
                print("[INFO] Initializing Horovod")
                import horovod.torch as hvd_torch
                self.hvd_torch = hvd_torch
                self.hvd_torch.init()
                print("[INFO] Rank %s of %s" %(self.hvd_torch.rank(), self.hvd_torch.size()))
                
                print("[INFO] Setting devices")
                torch.cuda.set_device(self.hvd_torch.local_rank())

                # Horovod: limit # of CPU threads to be used per worker.
                torch.set_num_threads(1)
        
    def init_data_manager(
        self,
        training_data_dir,
        input_file_format,
        data_type,
        dtype='float64',
        n_training_files=-1,
        val_data_dir=None
    ):
        super().init_data_manager(
            training_data_dir=training_data_dir,
            input_file_format=input_file_format,
            data_type=data_type,
            dtype=dtype,
            n_training_files=n_training_files,
            val_data_dir=val_data_dir
        )

        if self._MIXED_PRECISION and self.app_manager._MIXED_PRECISION_SUPPORT:
            # set floatx
            self.data_manager._DTYPE = "float32"
            torch.set_default_dtype(torch.float32)
            self.scaler = torch.cuda.amp.GradScaler(enabled=self._MIXED_PRECISION)

        # # ignoring files
        # if self._FILE_FORMAT == "npz":
        #     if self._MGPU_STRATEGY == "HVD":
        #         if self._N_FILES < self.hvd_torch.size():
        #             self._TRAINING_FILES = self._TRAINING_FILES + self._TRAINING_FILES[:self.hvd_torch.size()-self._N_FILES]
        #             self._N_FILES = len(self._TRAINING_FILES)
        #             print("Number of files: ", self._N_FILES, self._TRAINING_FILES)

        # shard data files
        if self._MGPU_STRATEGY == "HVD":
            print("[INFO] Sharding data files for Horovod")
            splitter = self.data_manager._N_FILES // self.hvd_torch.size()
            # splitter
            print(self.data_manager._N_FILES, splitter, splitter*self.hvd_torch.rank(), splitter*(self.hvd_torch.rank()+1))
            # divide training files
            self.data_manager._TRAINING_FILES = self.data_manager._TRAINING_FILES[splitter*self.hvd_torch.rank():splitter*(self.hvd_torch.rank()+1)]
            self.data_manager._N_FILES = len(self.data_manager._TRAINING_FILES)
        
        # files handled by single GPU
        print("[INFO] Number of training files:", self.data_manager._N_FILES)
        print("[INFO] Number of validation files:", self.data_manager._N_VAL_FILES)

    def load_training_data(
        self,
        data_params,
        batch_size,
        train_sampler=None
    ):
        return super().load_training_data(
            data_params=data_params,
            batch_size=batch_size,
            pin_memory=True,
            num_workers=self._N_CPUS,
            train_sampler=train_sampler
        )  

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
        self.model.to(self._DEVICE)
        self.opt_name = self.app_manager.get_opt()
        if self.opt_name == "SGD":
            self.optimizer = torch.optim.SGD(
                self.model.parameters(), 
                lr=opt_params["learning_rate"]
            )
        else:
            self.optimizer = torch.optim.Adagrad(
                self.model.parameters(), 
                lr=opt_params["learning_rate"]
            )

        if self._MGPU_STRATEGY == "HVD":
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
                inputs, targets        = inputs.to(self._DEVICE), targets.to(self._DEVICE)
                
                # clear the gradients
                self.optimizer.zero_grad()#set_to_none=True)
                
                with torch.cuda.amp.autocast(enabled=self._MIXED_PRECISION):
                    # compute the model output
                    yhat = self.model(inputs)
                    
                    # calculate loss
                    # print(yhat.is_cuda, targets.is_cuda, targets)
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
                total_loss += loss
                num_batches += 1
                
            epoch_stop_time = time.time()
            all_loss[epoch] = total_loss / num_batches
            epoch_time[epoch] = epoch_stop_time-epoch_start_time
            avg_batch_time[epoch] = epoch_time[epoch] / num_batches
            
            print("Epoch (", epoch, "/", self._N_EPOCHS, "): MSE: ", all_loss[epoch])
                
        m_stop = time.time()
        model_training_time = m_stop - m_start
        print("============> Model Fitting: ", model_training_time)
        
        

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