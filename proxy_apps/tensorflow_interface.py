import os
import time
import contextlib
import numpy as np
import tensorflow as tf
from timeit import default_timer as timer

import horovod.tensorflow.keras as hvd

from .apps import DeepDMDReferenceImplementation, TFLSTM, TFOptimizedSGPU, TFOptimizedEncoder, TFOptimizedModelTrainer
from .apps.timeseries_prediction import hyperparameters
from .utils import path_handler

# Timing callback to measure the timings
class TimingCallback(tf.keras.callbacks.Callback):
    def __init__(self, logs={}):
        self.logs=[]
    def on_epoch_begin(self, epoch, logs={}):
        self.starttime = timer()
    def on_epoch_end(self, epoch, logs={}):
        self.logs.append(timer()-self.starttime)

class TFInterface:
    def __init__(self, machine_name, n_gpus, data_type, mixed_precision=0, mgpu_strategy=None):
        os.environ['TF_XLA_FLAGS']="--tf_xla_auto_jit=2 --tf_xla_cpu_global_jit"
        os.environ['XLA_FLAGS']="--xla_gpu_cuda_data_dir=/share/apps/cuda/11.0/"
        os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"  # to avoid gpu contention
        os.environ['TF_CUDNN_DETERMINISTIC']='1'
        print("TF Framework")
        
        # os.environ['CUDA_DEVICE_ORDER'] = "PCI_BUS_ID"

        self._MACHINE_NAME = machine_name
        self._N_GPUS = n_gpus
        self._DTYPE = data_type
        
        self._MIXED_PRECISION = bool(mixed_precision)
        self._MGPU_STRATEGY = mgpu_strategy

        ## TensorFlow Setup
        print("[INFO] Tensorflow version: ", tf.__version__)
        
        ## Mirrored Strategy for MGPUs
        if self._MGPU_STRATEGY == "MirroredStrategy":
            self.mgpu_strategy = tf.distribute.MirroredStrategy()
            # self.mgpu_context = self.mgpu_strategy.scope()
        elif self._MGPU_STRATEGY == "HVD":
            hvd.init()
            print("I am rank %s of %s" %(hvd.rank(), hvd.size()))
            self.mgpu_strategy = tf.distribute.get_strategy()
        elif self._MGPU_STRATEGY is None:
            self.mgpu_strategy = tf.distribute.get_strategy()
            
        # physical gpus
        gpus = tf.config.experimental.list_physical_devices('GPU')
        for gpu in gpus:
            print("Name:", gpu.name, "  Type:", gpu.device_type)

        if gpus and (self._MGPU_STRATEGY == "HVD"):
            tf.config.experimental.set_memory_growth(gpus[hvd.local_rank()], True)
            tf.config.experimental.set_visible_devices(gpus[hvd.local_rank()], 'GPU')
            
        # eager mode
        # tf.compat.v1.disable_eager_execution()
        print("[INFO] Eager mode: ", tf.executing_eagerly())  # For easy reset of notebook state.

        # backend and JIT compilation
        tf.keras.backend.clear_session()
        # if self._LABEL not in ["Baseline"]: tf.config.optimizer.set_jit(True) # Enable XLA.

        ## Set Backend floatx - if required
        if "float" in self._DTYPE:
            tf.keras.backend.set_floatx(self._DTYPE)

        ## Mixed Precision
        if self._MIXED_PRECISION:
            # set policy
            policy = tf.keras.mixed_precision.Policy('mixed_float16')
            tf.keras.mixed_precision.set_global_policy(policy)

            # check dtypes
            print('Compute dtype: %s' % policy.compute_dtype)
            print('Variable dtype: %s' % policy.variable_dtype)

    def build_model(self, model_info, data_dict, n_epochs, batch_size):
        # name of the model
        self._MODEL_NAME = model_info["model_name"]
        
        self._N_EPOCHS = n_epochs
        self._BATCH_SIZE = batch_size

        self._SUFFIX = self._MACHINE_NAME + '_' + \
                       'ng' + str(self._N_GPUS) + '_' + \
                       'e' + str(self._N_EPOCHS) + '_' + \
                       'b' + str(self._BATCH_SIZE) + '_' + \
                       'mp' + str(int(self._MIXED_PRECISION)) + '_' + \
                       'mgpu' + str(self._MGPU_STRATEGY)  # + '_' + self._LABEL
        print("Suffix: ", self._SUFFIX)

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
        if self._MODEL_NAME in ["DeepDMDReferenceImplementation", "TFLSTM", "TFOptimizedSGPU", "TFOptimizedMGPU"]:
            self._HYPERPARAMETER_DICT['original_dim'] = data_dict["input_dim"]  # input data dimension
            self.hp = hyperparameters.HyperParameters(self._HYPERPARAMETER_DICT)

        print("Hyperparameters: ", self._HYPERPARAMETER_DICT)

        # within multi-gpu context
        with self.mgpu_strategy.scope():
            # initialize and build the model
            print("Model Name: ", self._MODEL_NAME)
            if self._MODEL_NAME == "DeepDMDReferenceImplementation":
                self.model = DeepDMDReferenceImplementation(self.hp)
            elif self._MODEL_NAME == "TFLSTM":
                self.model = TFLSTM(data_dict["look_back"], data_dict["look_forward"], data_dict["input_dim"])
            elif self._MODEL_NAME == "TFOptimizedSGPU":
                self.model = TFOptimizedSGPU(self.hp, mixed_precision=self._MIXED_PRECISION)
            elif self._MODEL_NAME == "TFOptimizedMGPU":
                self.model = TFOptimizedEncoder(self.hp)
            elif self._MODEL_NAME == "ResNet50":
                # initialize the model
                self.model = tf.keras.applications.resnet50.ResNet50(include_top=False, input_shape=(32, 32, 3), weights=None, classes=1000)

            # if horovod - update the learning rate
            if self._MGPU_STRATEGY == "HVD":
                self._HYPERPARAMETER_DICT["learning_rate"] = self._HYPERPARAMETER_DICT["learning_rate"] * self._N_GPUS

            # initialize the optimizer
            if self._MODEL_NAME in ["DeepDMDReferenceImplementation", "TFLSTM", "TFOptimizedSGPU", "TFOptimizedMGPU"]:
                optimizer = tf.optimizers.Adagrad(self._HYPERPARAMETER_DICT["learning_rate"])
            elif self._MODEL_NAME == "ResNet50":
                optimizer = tf.keras.optimizers.SGD(self._HYPERPARAMETER_DICT["learning_rate"] * self._N_GPUS)

            # if horovod - distributed optimizer
            if self._MGPU_STRATEGY == "HVD":
                optimizer = hvd.DistributedOptimizer(optimizer)

            # mixed precision optimizer
            if self._MIXED_PRECISION and (self.model in ["TFOptimizedSGPU", "TFOptimizedMGPU"]): 
                optimizer = tf.keras.mixed_precision.LossScaleOptimizer(optimizer)

            # compile the model
            if self._MODEL_NAME in ["DeepDMDReferenceImplementation", "TFOptimizedSGPU", "TFOptimizedMGPU"]:
                self.model.compile(optimizer=optimizer)
            elif self._MODEL_NAME == "TFLSTM":
                self.model.compile(loss=tf.losses.MeanSquaredError(),
                                   optimizer=optimizer,
                                   metrics=[tf.metrics.MeanAbsoluteError()]#,
                                   #experimental_run_tf_function=False
                                  )
            elif self._MODEL_NAME == "ResNet50":
                self.model.compile(loss='sparse_categorical_crossentropy', optimizer=optimizer, metrics=['accuracy'])
        
    def train_model(self, model_info, data_dict):
        ## Callbacks
        # timing callback
        timing_cb = TimingCallback()

        # Stopping criteria if the training loss doesn't go down by 1e-3
        early_stop_cb = tf.keras.callbacks.EarlyStopping(
            monitor='loss', min_delta=1e-3, verbose=1, mode='min', patience=3,
            baseline=None, restore_best_weights=True)

        # Create a TensorBoard Profiler
        log_dir = path_handler.get_absolute_path(model_info["tb_log_dir"], "tensorboard/" + self._SUFFIX)
        tb_callback = tf.keras.callbacks.TensorBoard(log_dir=log_dir, histogram_freq=1, embeddings_freq=1, profile_batch=(1, 20))

        # all callbacks
        self.callbacks = []  # [early_stop_cb, timing_cb]
        if self._MODEL_NAME in ["DeepDMDReferenceImplementation", "TFLSTM", "TFOptimizedSGPU", "ResNet50"]:
            self.callbacks = [timing_cb, early_stop_cb]
            
        if self._MGPU_STRATEGY == "HVD":
            self.callbacks.append(hvd.callbacks.BroadcastGlobalVariablesCallback(0))
            self.callbacks.append(hvd.callbacks.MetricAverageCallback())
            if hvd.rank() == 0:
                self.callbacks.append(tf.keras.callbacks.ModelCheckpoint('./checkpoints/keras_mnist-{epoch}.h5'))
                
        # update data
        start_time = time.perf_counter()
        if data_dict['training_data_format'] == "data_generator":
            print("Input data type: %s" %(data_dict['training_data_format']))
            # generate dataset
            training_dataset = data_dict["data"]
            data_options = tf.data.Options()

            # if multigpu strategy
            if self._MGPU_STRATEGY in ["MirroredStrategy"]:
                self.hp.bs = self.hp.bs * self.mgpu_strategy.num_replicas_in_sync
                print("Number of Replicas: ", self.mgpu_strategy.num_replicas_in_sync)

                data_options.experimental_distribute.auto_shard_policy = tf.data.experimental.AutoShardPolicy.DATA

            training_dataset = training_dataset.with_options(data_options).batch(self._HYPERPARAMETER_DICT['batch_size'])
            # training_dataset = training_dataset.cache()
            
            # compute steps per epoch
            steps_per_epoch = data_dict["n_points"] // self._HYPERPARAMETER_DICT['batch_size']
            # if multigpu strategy
            verbose = 2
            if self._MGPU_STRATEGY in ["HVD"]:
                steps_per_epoch = steps_per_epoch // hvd.size()
                verbose = 2 if hvd.rank() == 0 else 0
            
            print("Steps per epoch: ", steps_per_epoch)

            # fill data - if asked
            if self._FILL_DATA:
                steps_per_epoch = self.mgpu_strategy.num_replicas_in_sync * steps_per_epoch
                training_dataset = training_dataset.repeat(self.mgpu_strategy.num_replicas_in_sync)

            # for multi-gpu, split the data
            # training_dataset = training_dataset.shuffle(buffer_size=steps_per_epoch)
            training_dataset = training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
            if self._MGPU_STRATEGY in ["MirroredStrategy"]:
                training_dataset = self.mgpu_strategy.experimental_distribute_dataset(training_dataset)

        elif data_dict['training_data_format'] == "split_array":
            training_dataset = data_dict["data"]

        elif data_dict['training_data_format'] == "image_data_generator":
            # data options
            data_options = tf.data.Options()

            # if multigpu strategy
            if self._MGPU_STRATEGY is not None:
                self._HYPERPARAMETER_DICT["batch_size"] = self._HYPERPARAMETER_DICT["batch_size"] * self.mgpu_strategy.num_replicas_in_sync
                print("Number of Replicas: ", self.mgpu_strategy.num_replicas_in_sync)

                data_options.experimental_distribute.auto_shard_policy = tf.data.experimental.AutoShardPolicy.DATA

            train_dataset = data_dict['training_data']
            train_dataset = train_dataset.batch(self._HYPERPARAMETER_DICT['batch_size'])
            train_dataset = train_dataset.prefetch(tf.data.AUTOTUNE)
            train_dataset = train_dataset.with_options(data_options)

            val_dataset = data_dict['val_data']
            val_dataset = val_dataset.batch(self._HYPERPARAMETER_DICT['batch_size'])
            val_dataset = val_dataset.prefetch(tf.data.AUTOTUNE)
            val_dataset = val_dataset.with_options(data_options)
        
        end_time = time.perf_counter()
        print("============> Prepare Dataset: ", end_time-start_time)
        print(self._MODEL_NAME)
        
        # model training
        m_start = time.time()
        if self._MODEL_NAME == "DeepDMDReferenceImplementation":
            history = self.model.fit(training_dataset,
                                batch_size=self._BATCH_SIZE,
                                epochs=self._N_EPOCHS,
                                callbacks=self.callbacks,
                                shuffle=True)
            epoch_time = self.callbacks[0].logs
            all_loss = history.history['loss']
        elif self._MODEL_NAME == "TFLSTM":
            print(data_dict["input_dim"])
            #for d in training_dataset.take(1):
            #    print(d)
            # print(k1)
            print(data_dict)
            self.model.build(input_shape=(None, data_dict["look_back"], data_dict["input_dim"])) 
            print(self.model.summary())
            
            history = self.model.fit(training_dataset,
                                     steps_per_epoch=steps_per_epoch,
                                     epochs=self._N_EPOCHS, 
                                     # workers=16, 
                                     # use_multiprocessing=True,
#                                      experimental_run_tf_function=False,
                                     verbose=2
                                    )
            epoch_time = self.callbacks[0].logs
            all_loss = history.history['loss']
        elif self._MODEL_NAME == "TFOptimizedSGPU":
            self.model.encoder.build(input_shape=(None, data_dict["input_dim"]))   
            history = self.model.fit(training_dataset,
                                     batch_size=self._BATCH_SIZE,
                                     epochs=self._N_EPOCHS, 
                                     workers=64, 
                                     use_multiprocessing=True)
            epoch_time = self.callbacks[0].logs
            all_loss = history.history['loss']
        elif self._MODEL_NAME == "TFOptimizedMGPU":
            trainer = TFOptimizedModelTrainer(self.hp, self.model, mixed_precision=self._MIXED_PRECISION)
            all_loss, epoch_time, avg_batch_time = trainer.fit(training_dataset, n_epochs=self._N_EPOCHS, batch_size=self._BATCH_SIZE, steps_per_epoch=steps_per_epoch)
        elif self._MODEL_NAME == "ResNet50":
            history = self.model.fit(train_dataset.take(4),
                                epochs=self._N_EPOCHS,
                                verbose=1,
                                validation_steps=10,
                                callbacks=self.callbacks)
            epoch_time = self.callbacks[0].logs
            all_loss = history.history['loss']

        m_stop = time.time()
        print("============> Model Fitting: ", m_stop-m_start)

        # # save model
        self._MODEL_PATH = path_handler.get_absolute_path(model_info["model_dir"], self._SUFFIX)
        print("Model Path: ", self._MODEL_PATH)

        if self._MODEL_NAME in ["TFOptimizedMGPU"]: trainer.encoder.save(self._MODEL_PATH)
        elif self._MODEL_NAME in ["TFOptimizedSGPU"]: self.model.encoder.save(self._MODEL_PATH)
        else: self.model.save(self._MODEL_PATH)

        return self.model, m_start, m_stop, all_loss, epoch_time

class ConditionalScope(object):
    def __init__(self, condition, contextmanager):
        print(condition, contextmanager)
        self.condition = condition
        self.contextmanager = contextmanager
    def __enter__(self):
        if self.condition:
            return self.contextmanager.__enter__()
    def __exit__(self, *args):
        if self.condition:
            return self.contextmanager.__exit__(*args)