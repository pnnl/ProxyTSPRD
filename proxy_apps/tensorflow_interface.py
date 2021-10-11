import os
import time
import contextlib
import numpy as np
import tensorflow as tf

from .apps import DeepDMDReferenceImplementation, TFOptimized# deepDMD, proxyDeepDMD, proxyDeepDMDMGPU
from .apps.timeseries_prediction import hyperparameters
from .utils import path_handler

class TFInterface:
    def __init__(self, model_info, n_epochs, batch_size,
                 machine_name, n_gpus, n_cpus,
                 mixed_precision=0, mgpu_strategy=None):
        self._N_EPOCHS = n_epochs
        self._BATCH_SIZE = batch_size

        self._MACHINE_NAME = machine_name
        self._N_GPUS = n_gpus
        self._N_CPUS = n_cpus

        self._MIXED_PRECISION = bool(mixed_precision)
        self._MGPU_STRATEGY = mgpu_strategy

        self._SUFFIX = self._MACHINE_NAME + '_' + \
                       'ng' + str(self._N_GPUS) + '_' + \
                       'nc' + str(self._N_CPUS) + '_' + \
                       'e' + str(self._N_EPOCHS) + '_' + \
                       'b' + str(self._BATCH_SIZE) + '_' + \
                       'mp' + str(mixed_precision) + '_' + \
                       'mgpu' + str(self._MGPU_STRATEGY)  # + '_' + self._LABEL
        print("Suffix: ", self._SUFFIX)

        self._MODEL_NAME = model_info["model_name"]
        self._MODEL_PATH = path_handler.get_absolute_path(model_info["model_dir"], self._SUFFIX)
        print("Model Path: ", self._MODEL_PATH)

        ## TensorFlow Setup
        print("[INFO] Tensorflow version: ", tf.__version__)
        os.environ["TF_GPU_THREAD_MODE"] = "gpu_private"  # to avoid gpu contention
        # os.environ['TF_CUDNN_DETERMINISTIC']='1'

        # physical gpus
        gpus = tf.config.experimental.list_physical_devices('GPU')
        for gpu in gpus:
            print("Name:", gpu.name, "  Type:", gpu.device_type)
            # tf.config.experimental.set_memory_growth(gpu, True)

        # logical gpus
        logical_gpus = tf.config.experimental.list_logical_devices('GPU')
        for gpu in logical_gpus:
            print("Name:", gpu.name, "  Type:", gpu.device_type)

        # eager mode
        # tf.compat.v1.disable_eager_execution()
        print("[INFO] Eager mode: ", tf.executing_eagerly())  # For easy reset of notebook state.

        # backend and JIT compilation
        tf.keras.backend.clear_session()
        # if self._LABEL not in ["Baseline"]: tf.config.optimizer.set_jit(True) # Enable XLA.

        ## Set Backend floatx - if required
        if "floatx" in model_info:
            tf.keras.backend.set_floatx(model_info["floatx"])

        ## Mixed Precision
        if mixed_precision:
            # set floatx
            tf.keras.backend.set_floatx('float32')

            # set policy
            policy = tf.keras.mixed_precision.Policy('mixed_float16')
            tf.keras.mixed_precision.set_global_policy(policy)

            # check dtypes
            print('Compute dtype: %s' % policy.compute_dtype)
            print('Variable dtype: %s' % policy.variable_dtype)

        ## Mirrored Strategy for MGPUs
        if self._MGPU_STRATEGY == "MirroredStrategy":
            self.mgpu_strategy = tf.distribute.MirroredStrategy()
            self.mgpu_context = self.mgpu_strategy.scope()
        elif self._MGPU_STRATEGY is None:
            self.mgpu_context = contextlib.nullcontext()

        # fill data in multiple GPUs
        self._FILL_DATA = False
        if model_info["fill_data"] == "True":
            self._FILL_DATA = True

        ## Initialize Hyperparameters - we can keep it as a dict instead of creating a separate class
        if "hyperparameters" in model_info: self._HYPERPARAMETER_DICT = model_info["hyperparameters"]
        else: self._HYPERPARAMETER_DICT = {}
        self._HYPERPARAMETER_DICT['num_epochs'] = self._N_EPOCHS  # Number of epochs
        self._HYPERPARAMETER_DICT['batch_size'] = self._BATCH_SIZE
        if "floatx" in model_info:
            self._HYPERPARAMETER_DICT['floatx'] = model_info['floatx']

    def train_model(self, data_dict, callbacks=[]):
        # hyper parameters
        self._HYPERPARAMETER_DICT['original_dim'] = data_dict["input_dim"]  # input data dimension
        print("Hyperparameters: ", self._HYPERPARAMETER_DICT)

        hp = hyperparameters.HyperParameters(self._HYPERPARAMETER_DICT)

        with self.mgpu_context:
            # select the model
            if self._MODEL_NAME == "DeepDMDReferenceImplementation":
                # Initialize, build, and fit the model
                model = DeepDMDReferenceImplementation(hp)
            elif self._MODEL_NAME == "TFOptimized":
                model = TFOptimized(hp, mixed_precision=self._MIXED_PRECISION)

            # select the optimizer
            optimizer = tf.optimizers.Adagrad(hp.lr)
            if self._MIXED_PRECISION: optimizer = tf.keras.mixed_precision.LossScaleOptimizer(optimizer)

            # compile the model
            model.compile(optimizer=optimizer)

        training_dataset = data_dict["data"]
        if data_dict['data_type'] == "data_generator":
            # generate dataset
            data_options = tf.data.Options()

            # if multigpu strategy
            if self._MGPU_STRATEGY is not None:
                hp.bs = hp.bs * self.mgpu_strategy.num_replicas_in_sync
                print("Number of Replicas: ", self.mgpu_strategy.num_replicas_in_sync)

                data_options.experimental_distribute.auto_shard_policy = tf.data.experimental.AutoShardPolicy.DATA

            training_dataset = training_dataset.with_options(data_options).batch(hp.bs)


            # shuffle_buffer_size = self.x_indexer.shape[0] * self.x_indexer.shape[1] * len(
            #     self.data_handler.dir_list) // hp.bs
            # if self._LABEL in ["TFDataOptMGPUAcc"]:
            #     shuffle_buffer_size = mirrored_strategy.num_replicas_in_sync * shuffle_buffer_size
            #     training_dataset = training_dataset.repeat(mirrored_strategy.num_replicas_in_sync)
            #
            # training_dataset = training_dataset.shuffle(buffer_size=shuffle_buffer_size)

            # fill data
            if self._FILL_DATA:
                training_dataset = training_dataset.repeat(self.strategy.num_replicas_in_sync)

            # for multi-gpu, split the data
            training_dataset = training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
            if self._MGPU_STRATEGY is not None:
                training_dataset = self.strategy.experimental_distribute_dataset(training_dataset)

        # training
        m_start = time.time()
        history = model.fit(training_dataset,
                            batch_size=hp.bs,
                            epochs=hp.ep,
                            callbacks=callbacks,
                            shuffle=True)
        m_stop = time.time()

        # get info
        epoch_time = timing_cb.logs
        all_loss = history.history['loss']

        # save model
        print(e1)
        model.save(self._MODEL_PATH)

        # ------------------------------- MODEL TRAINING ------------------------------------------------
        if self._MODEL_NAME == "DeepDMDReferenceImplementation":
            # Initialize, build, and fit the model
            K_model = deepDMD.NeuralNetworkModel(hp)
            optimizer=tf.optimizers.Adagrad(hp.lr)
            K_model.compile(optimizer=optimizer)

            # training
            m_start = time.time()
            history = K_model.fit([self.X_array, self.Y_array], batch_size=hp.bs, 
                              epochs=hp.ep, 
                              callbacks=callbacks, 
                              shuffle=True)
            m_stop = time.time()
            
            # get info
            epoch_time = timing_cb.logs
            all_loss = history.history['loss']
            
            # save model
            K_model.save(model_path)

        elif self._LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
            # Initialize and build the model
            if self._N_GPUS > 1:
                with mirrored_strategy.scope():
                    K_model = proxyDeepDMDMGPU.Encoder(hp)
                    optimizer=tf.optimizers.Adagrad(hp.lr)
                    if self._MIXED_PRECISION: optimizer = tf.keras.mixed_precision.LossScaleOptimizer(optimizer) 
                    K_model.compile(optimizer=optimizer)
                    
                hp.bs = hp.bs * mirrored_strategy.num_replicas_in_sync
                print(mirrored_strategy.num_replicas_in_sync)
            else:
                K_model = proxyDeepDMD.NeuralNetworkModel(hp, mixed_precision=self._MIXED_PRECISION)
                optimizer=tf.optimizers.Adagrad(hp.lr)
                if self._MIXED_PRECISION: optimizer = tf.keras.mixed_precision.LossScaleOptimizer(optimizer) 
                K_model.compile(optimizer=optimizer)

            # generate dataset
            data_options = tf.data.Options()
            data_options.experimental_distribute.auto_shard_policy = tf.data.experimental.AutoShardPolicy.DATA
            zip_data = self.scenario_data.with_options(data_options).batch(hp.bs)

            training_dataset = zip_data.cache()

            shuffle_buffer_size = self.x_indexer.shape[0] * self.x_indexer.shape[1] * len(self.data_handler.dir_list) // hp.bs
            if self._LABEL in ["TFDataOptMGPUAcc"]: 
                shuffle_buffer_size = mirrored_strategy.num_replicas_in_sync * shuffle_buffer_size
                training_dataset = training_dataset.repeat(mirrored_strategy.num_replicas_in_sync)

            training_dataset = training_dataset.shuffle(buffer_size=shuffle_buffer_size)
            training_dataset = training_dataset.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)

            # for multi-gpu, split the data
            if self._N_GPUS > 1:
                training_dataset = mirrored_strategy.experimental_distribute_dataset(training_dataset)

            # compile and fit model
            m_start = time.time()
            if self._LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]:
                trainer = proxyDeepDMDMGPU.NeuralNetworkModel(hp, K_model, mixed_precision=self._MIXED_PRECISION)
                all_loss, epoch_time, avg_batch_time = trainer.fit(training_dataset, n_epochs=hp.ep, batch_size=hp.bs, steps_per_epoch=shuffle_buffer_size)
            else:
                K_model.encoder.build(input_shape=(None, _REPEAT_COLS * _NCOLS))        
                history = K_model.fit(training_dataset, epochs=hp.ep, callbacks=callbacks, workers=self._N_CPUS, use_multiprocessing=True)
                all_loss = history.history['loss'] 
            m_stop = time.time()
            
            if self._LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]: epoch_time = epoch_time
            else: epoch_time = timing_cb.logs
                
            # save model
            if self._LABEL in ["TFDataOptMGPU", "TFDataOptMGPUAcc"]: trainer.encoder.save(model_path)
            else: K_model.encoder.save(model_path)
            
        return model, m_start, m_stop, all_loss, epoch_time


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
