import os
import time
import torch
import functools
import numpy as np

from .utils import path_handler
from .utils.data.main import DataHandler
from .apps.timeseries_prediction import hyperparameters
from .apps import PTLSTM, PTConvLSTM
        
class PyTorchInterface:
    def __init__(self, machine_name, n_gpus, n_cpus, data_type, n_epochs, batch_size, mixed_precision=0, mgpu_strategy=None, profiling=0):
        self._MACHINE_NAME = machine_name
        self._N_GPUS = n_gpus
        self._N_CPUS = n_cpus
        self._DTYPE = data_type
        
        self._N_EPOCHS = n_epochs
        self._BATCH_SIZE = batch_size

        self._MIXED_PRECISION = bool(mixed_precision)
        self._MGPU_STRATEGY = mgpu_strategy
        
        self._PROFILING = profiling

        ## PyTorch Setup
        print("[INFO] PyTorch version: ", torch.__version__)

        self._DEVICE = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
        print("[INFO] Device Type: ", self._DEVICE)
        
        # initialize the optimizer
        if torch.cuda.device_count() > 1:
            print("[INFO] Let's use", torch.cuda.device_count(), "GPUs!")
            
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

        if self._DTYPE == "float64": torch.set_default_dtype(torch.float64)
        else: torch.set_default_dtype(torch.float32)

        if self._MIXED_PRECISION:
            # set floatx
            self._DTYPE = "float32"
            torch.set_default_dtype(torch.float32)
            self.scaler = torch.cuda.amp.GradScaler(enabled=self._MIXED_PRECISION)

    def get_indexer(self, n_rows, window_size, shift_size, start_point, leave_last):
        return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]
        
    def load_data(self, ref_dir, data_params):
        print("[INFO] PyTorch Data Loader.................................................")
        # training data
        data_params["training_data_dir"] = path_handler.get_absolute_path(ref_dir, data_params["training_data_dir"])
        print("[INFO] Training Data Directory:", data_params["training_data_dir"])

        # validation data - if any
        if "val_data_dir" in data_params:
            data_params["val_data_dir"] = path_handler.get_absolute_path(ref_dir, data_params["val_data_dir"])
            print("[INFO] Validation Data Directory:", data_params["val_data_dir"])
            
        dir_list = [data_params["training_data_dir"] + "/" + f + "/" for f in os.listdir(data_params["training_data_dir"])]
        n_files = len(dir_list)
        
        # subset files
        if data_params["n_scenarios"]:
            n_files = data_params["n_scenarios"]
            dir_list = dir_list[:n_files]
        
        if self._MGPU_STRATEGY == "HVD":
            print("[INFO] Sharding data files for Horovod")
            splitter = n_files // self.hvd_torch.size()
            print(n_files, splitter, splitter*self.hvd_torch.rank(), splitter*(self.hvd_torch.rank()+1))
            dir_list = dir_list[splitter*self.hvd_torch.rank():splitter*(self.hvd_torch.rank()+1)]
            n_files = len(dir_list)
        
        print("[INFO] Number of files:", n_files)
        
        # load data
        dh_start = time.time()
        
        x_indexer = self.get_indexer(data_params["n_rows"],
                                     data_params["look_back"],
                                     data_params["shift_size"],
                                     0,
                                     data_params["n_signals"]+data_params["look_forward"]
                                     )
        y_indexer = self.get_indexer(data_params["n_rows"],
                                     data_params["look_forward"],
                                     data_params["shift_size"],
                                     data_params["look_back"],
                                     data_params["n_signals"]
                                     )
        # print("Indices....................", x_indexer, y_indexer)

        data_params["data_generator"] = data_params["data_generator"] + "_PT"
        data_handler = DataHandler(data_params, self._DTYPE, dir_list)
        data_dict = data_handler.load_data(x_indexer, y_indexer)
        dh_stop = time.time()

        # loading time
        data_loading_time = dh_stop-dh_start
        if self._MGPU_STRATEGY == "HVD":
            avg_data_loading_time = avg_data_loading_time = data_loading_time
            # self.hvd_torch.allreduce(torch.tensor(data_loading_time), average=True).numpy()
        else:
            avg_data_loading_time = data_loading_time
        
        # return data dict
        return avg_data_loading_time, data_dict
    
    def build_model(self, model_info, data_dict):
        # name of the model
        self._MODEL_NAME = model_info["model_name"]
        
        self._SUFFIX = 'PT_' + self._MACHINE_NAME + '_' + \
                       'ng' + str(self._N_GPUS) + '_' + \
                       'e' + str(self._N_EPOCHS) + '_' + \
                       'b' + str(self._BATCH_SIZE) + '_' + \
                       'mp' + str(int(self._MIXED_PRECISION)) + '_' + \
                       'mgpu' + str(self._MGPU_STRATEGY) + '_' + \
                       'prof' + str(self._PROFILING)  # + '_' + self._LABEL
        print("[INFO] Suffix: ", self._SUFFIX)

        # fill data in multiple GPUs
        self._FILL_DATA = False
        if model_info["fill_data"] == "True":
            self._FILL_DATA = True
            
        ## Initialize Hyperparameters - we can keep it as a dict instead of creating a separate class
        if "hyperparameters" in model_info: self._HYPERPARAMETER_DICT = model_info["hyperparameters"]
        else: self._HYPERPARAMETER_DICT = {}
        self._HYPERPARAMETER_DICT['num_epochs'] = self._N_EPOCHS  # Number of epochs
        self._HYPERPARAMETER_DICT['batch_size'] = self._BATCH_SIZE
        self._HYPERPARAMETER_DICT['data_type'] = self._DTYPE

        # hyper parameters
        if self._MODEL_NAME in ["LSTM", "ConvLSTM"]:
            self._HYPERPARAMETER_DICT['original_dim'] = data_dict["input_dim"]  # input data dimension
            self.hp = hyperparameters.HyperParameters(self._HYPERPARAMETER_DICT)

        print("[INFO] Hyperparameters: ", self._HYPERPARAMETER_DICT)

        # initialize and build the model
        print("[INFO] Model Name: ", self._MODEL_NAME)
        if self._MODEL_NAME in ["LSTM"]:
            # initialize model
            self.model = PTLSTM(data_dict["look_back"], data_dict["look_forward"], data_dict["input_dim"], self._DEVICE)
        elif self._MODEL_NAME in ["ConvLSTM"]:
            # initialize model
            self.model = PTConvLSTM(data_dict["look_back"], data_dict["look_forward"], data_dict["input_dim"], self._DEVICE)
        
        # self.model = torch.nn.DataParallel(self.model)
        if self._MGPU_STRATEGY == "HVD":
            self._HYPERPARAMETER_DICT["learning_rate"] = self._HYPERPARAMETER_DICT["learning_rate"] * self.hvd_torch.local_size()
        
        self.model.to(self._DEVICE)
        print("[INFO] Learning Rate: ", self._HYPERPARAMETER_DICT["learning_rate"])
        self.optimizer = torch.optim.Adagrad(self.model.parameters(), lr=self._HYPERPARAMETER_DICT["learning_rate"])
        self.criterion = torch.nn.MSELoss()#.to(self._DEVICE)
        
        if self._MGPU_STRATEGY == "HVD":
            self.optimizer = self.hvd_torch.DistributedOptimizer(self.optimizer, named_parameters=self.model.named_parameters())
            
            self.hvd_torch.broadcast_parameters(self.model.state_dict(), root_rank=0)
            self.hvd_torch.broadcast_optimizer_state(self.optimizer, root_rank=0)
        
        print("[INFO] Model Parameters: \n")
        for name, param in self.model.named_parameters():
            if param.requires_grad:
                print(name, param.shape)
        
    def train_model(self, model_info, data_dict, output_dir):
        # training data
        data_generator = data_dict["data"]
        train_sampler = None
        # if self._MGPU_STRATEGY == "HVD":
        #     train_sampler = torch.utils.data.distributed.DistributedSampler(data_generator, num_replicas=self.hvd_torch.size(), rank=self.hvd_torch.rank())
        
        training_dataset = torch.utils.data.DataLoader(data_generator, 
                                                       batch_size=self._BATCH_SIZE, 
                                                       pin_memory=True, 
                                                       num_workers=int(self._N_CPUS),
                                                       sampler=train_sampler
                                                      )
        
        # for t in training_dataset:
        #     print(t[0].shape, t[1].shape)
        
        m_start = time.time()
        print("[INFO] Data Type:", self._DTYPE)
        
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
            for i, (inputs, targets) in enumerate(training_dataset):
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
        
        if self._MGPU_STRATEGY == "HVD":
            avg_model_training_time = self.hvd_torch.allreduce(torch.tensor(model_training_time), average=True).cpu().numpy()
            avg_all_loss = [self.hvd_torch.allreduce(l, average=True).detach().cpu().item() for l in all_loss]
            avg_epoch_time = [self.hvd_torch.allreduce(e, average=True).cpu().item() for e in epoch_time]
        else:
            avg_model_training_time = model_training_time
            avg_all_loss = [l.detach().cpu().item() for l in all_loss]
            avg_epoch_time = [e.cpu().item() for e in epoch_time]
        
        # # save model
        self._MODEL_DIR = path_handler.get_absolute_path(model_info["model_dir"], self._MODEL_NAME + "/R" + str(data_dict["repeat_cols"]))
        self._MODEL_PATH = path_handler.get_absolute_path(self._MODEL_DIR, self._SUFFIX)
        print("Model Path: ", self._MODEL_PATH)
        
        self._DATA_DIR = path_handler.get_absolute_path(output_dir, self._MODEL_NAME + "/R" + str(data_dict["repeat_cols"]))
        self._DATA_FILE = path_handler.get_absolute_path(self._DATA_DIR, "tp_" + self._SUFFIX + ".json")
        print("Data Path: ", self._DATA_FILE)
        
        if self._MGPU_STRATEGY == "HVD":
            if self.hvd_torch.rank() == 0:
                if not os.path.exists(self._MODEL_DIR):
                    os.makedirs(self._MODEL_DIR)
                # self.model.save(self._MODEL_PATH)
                torch.save(self.model, self._MODEL_PATH)

                if not os.path.exists(self._DATA_DIR):
                    os.makedirs(self._DATA_DIR)
                    
            self.hvd_torch.shutdown()
            time.sleep(5)
        
        else:
            if not os.path.exists(self._MODEL_DIR):
                os.makedirs(self._MODEL_DIR)
            if not os.path.exists(self._DATA_DIR):
                os.makedirs(self._DATA_DIR)

        return avg_model_training_time, avg_all_loss, avg_epoch_time


