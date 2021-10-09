import os
import time
import numpy as np
import tensorflow as tf

from .utils.data.grid import GridNetworkDataHandler, GridNetworkNewGen
from .apps.timeseries_prediction import deepDMD, proxyDeepDMD, proxyDeepDMDMGPU

class TFInterface:
    def __init__(self, label, dtype, mixed_precision, n_gpus):
        self._LABEL = label
        self._MIXED_PRECISION = mixed_precision
        self._N_GPUS = n_gpus
        
        ## TensorFlow Setup
        print("[INFO] Tensorflow version: ", tf.__version__)
        os.environ["TF_GPU_THREAD_MODE"] = "gpu_private" # to avoid gpu contention
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
        print("[INFO] Eager mode: ", tf.executing_eagerly()) # For easy reset of notebook state.
        
        # backend and JIT compilation
        tf.keras.backend.clear_session()
        # if self._LABEL not in ["Baseline"]: tf.config.optimizer.set_jit(True) # Enable XLA.

        ## Model Setup
        # models: Baseline, TFDataOptMGPU, TFDataOptMGPUAcc, LSTM 
        # precision
        if self._LABEL in ["Baseline"]: 
            tf.keras.backend.set_floatx('float64')

        elif self._LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc"]:
            tf.keras.backend.set_floatx(dtype)
            if self._MIXED_PRECISION:
                # set floatx
                dtype = 'float32'
                tf.keras.backend.set_floatx(dtype)
                # set policy
                policy = tf.keras.mixed_precision.Policy('mixed_float16')
                tf.keras.mixed_precision.set_global_policy(policy)
                # check dtypes
                print('Compute dtype: %s' % policy.compute_dtype)
                print('Variable dtype: %s' % policy.variable_dtype)

        ## Mirrored Strategy for MGPUs
        if self._N_GPUS > 1:
            mirrored_strategy = tf.distribute.MirroredStrategy()
            
    def load_data(self, scenario_dir, n_rows, n_cols, repeat_cols, dtype, window_size, shift_size, n_signals):
        if self._LABEL in ["Baseline", "TFDataOpt"]:
            self.data_handler = GridNetworkDataHandler(scenario_dir=scenario_dir,
                                                    n_rows=n_rows,
                                                    n_cols=n_cols,
                                                    repeat_cols=repeat_cols,
                                                    dtype=dtype
                                                 ) 

            scenario_data = self.data_handler.load_grid_data()

            # ------------------------------- DATA PREPROCESSING ------------------------------------------------
            X_data, Y_data = self.data_handler.create_windows(scenario_data)

            # ------------------------------- DATA NORMALIZATION ------------------------------------------------
            self.X_array, self.Y_array = self.data_handler.scale_data(X_data, Y_data)

        elif self._LABEL in ["TFDataGen", "TFDataOptMGPU", "TFDataOptMGPUAcc", "LSTM"]:
            self.data_handler = GridNetworkNewGen(scenario_dir=scenario_dir,
                                                    n_rows=n_rows,
                                                    n_cols=n_cols,
                                                    repeat_cols=repeat_cols,
                                                    d_type=dtype
                                                 )

            self.x_indexer = self.get_indexer(n_rows, window_size, shift_size, 0, n_signals)
            self.y_indexer = self.get_indexer(n_rows, window_size, shift_size, 1, 0)
            
            self.scenario_data = self.data_handler.get_training_data(self.x_indexer, self.y_indexer)
            
    # @tf.function(experimental_compile=True)
    def get_indexer(self, n_rows, window_size, shift_size, start_point, leave_last):
        return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]
    
    def train_model(self, hp, model_path):
        # ------------------------------- MODEL TRAINING ------------------------------------------------
        if self._LABEL == "Baseline":
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
