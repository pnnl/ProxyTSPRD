import os, sys, time
import tensorflow as tf

from .main import Interface

class TensorFlowInterface(Interface):
    def __init__(
        self, 
        mpi_rank=0
    ) -> None:
        super().__init__(mpi_rank=mpi_rank)
        self._ML_FRAMEWORK = "TensorFlow"

        ## Tensorflow Setup
        if self._GLOBAL_RANK == 0:
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
        if data_params["dataloader"] == "tf.data.Dataset":
            # print(data_generator.x_indexer.shape)
            dataloader = tf.data.Dataset.from_generator(
                data_generator,
                output_signature = (
                    tf.TensorSpec(
                        shape=(data_generator.x_indexer.shape[1], data_generator.n_cols * data_generator.repeat_cols),
                        dtype=data_generator.d_type
                    ),
                    tf.TensorSpec(
                        shape=(data_generator.y_indexer.shape[1], data_generator.n_cols * data_generator.repeat_cols),
                        dtype=data_generator.d_type
                    )
                )
            )
            data_options = tf.data.Options()
            dataloader = dataloader.with_options(data_options).batch(batch_size)
            dataloader = dataloader.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
            

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
        model_exists = False

        # print(data_params)
        self.model.build(
            input_shape=(
                data_params["batch_size"], 
                data_params["bw_size"], 
                data_params["n_features"]
            )
        )

        # load if model exists
        self._MODEL_PATH = os.path.join(
                            model_dir, 
                            model_name + ".tf"
                        )
        if self._GLOBAL_RANK == 0:
            print(f"[INFO] Model Path: %s" %(self._MODEL_PATH))
        if os.path.exists(self._MODEL_PATH + ".index"):
            self.model.load_weights(self._MODEL_PATH)
            # trained_model = tf.keras.models.load_model(self._MODEL_PATH)
            # self.model.set_weight(trained_model.get_weights())
            if self._GLOBAL_RANK == 0:
                print(f"[INFO] Loaded Model: %s" %(self._MODEL_PATH))
        
            model_exists = True
        elif not os.path.exists(model_dir):
            os.makedirs(model_dir)

        # print model parameters
        if self._GLOBAL_RANK == 0:
            print("[INFO] Model Parameters:")
            print(self.model.summary())

        return model_exists

    def train(self):
        pass

    def infer(self):
        pass

class TensorFlowInterfaceGPU(TensorFlowInterface):
    def __init__(
        self,
        n_gpus,
        n_cpus,
        mgpu_strategy,
        mixed_precision,
        dtype,
        mpi_rank=0
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
        criterion_params,
        infer_through=None,
        batch_size=1
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
        all_loss = history.history['loss']

        if self._GLOBAL_RANK == 0:
            print("============> (Before Sync) Training Time: ", model_training_time)
            print("============> (Before Sync) Training Loss: ", all_loss)
        
        if self._MGPU_STRATEGY == "HVD":
            avg_model_training_time = self.hvd_keras.allreduce(model_training_time, average=True).numpy()
            avg_all_loss = [self.hvd_keras.allreduce(l, average=True).numpy() for l in all_loss]
        else:
            avg_model_training_time = model_training_time
            avg_all_loss = all_loss

        if self._GLOBAL_RANK == 0:
            print("============> (After Sync) Training Time: ", avg_model_training_time)
            print("============> (After Sync) Training Loss: ", avg_all_loss)
            
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
        infer_through=None,
        batch_size=1
    ):
        super().infer()

        # loss and accuracy
        num_samples = 0
        test_loss = 0.
        
        # loss and accuracy
        start_time = time.perf_counter()
        for inputs, target in data:
            # print(inputs.shape, target.shape)
            # print(inputs.numpy())
            if inputs.shape[0] == batch_size:
                if infer_through=="onnx":
                    y_onnx = self.sess.run(["output_1"], dict({"input_1": inputs.numpy()}))
                    yhat = y_onnx[0]
                else:        
                    yhat = self.model.predict(
                        inputs,
                        verbose=0
                    )
                
                # calculate loss
                self.criterion = self.app_manager.get_criterion(criterion_params={})
                test_loss += self.criterion(yhat, target)

                # calculate the number of samples
                num_samples += 1
        
        end_time = time.perf_counter()
        inf_time = end_time - start_time
        
        loss = test_loss / num_samples
        if self._GLOBAL_RANK == 0:
            print("============> (Before Sync) Inference Time: ", inf_time)
            print("============> (Before Sync) Inference Loss: ", loss)

        if self._MGPU_STRATEGY == "HVD":
            avg_inference_time = self.hvd_keras.allreduce(inf_time, average=True).numpy()
            avg_loss = self.hvd_keras.allreduce(loss, average=True).numpy()
        else:
            avg_inference_time = inf_time
            avg_loss = loss
        
        if self._GLOBAL_RANK == 0:
            print("============> (After Sync) Inference Time: ", avg_inference_time)
            print("============> (After Sync) Inference Loss: ", avg_loss)

    def close(self):
        if self._MGPU_STRATEGY == "HVD":
            self.hvd_keras.shutdown()

