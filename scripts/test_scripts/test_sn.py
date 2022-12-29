import random,sys,os
import numpy as np
import tensorflow as tf
from keras.backend.tensorflow_backend import set_session
tf_version = int((tf.__version__)[0])
from tensorflow.python.client import device_lib
from keras.models import Sequential,Model
from keras.layers import Dense,Dropout,Input,BatchNormalization
from keras.optimizers import Adam
from keras import backend as K

import random, math
import time

if __name__ == "__main__":
    start = time.time()
 
    num_cores = os.cpu_count()
    num_CPU   = os.cpu_count()
    num_GPU   = 0

    if tf_version < 2:
        gpu_names = [x.name for x in device_lib.list_local_devices() if x.device_type == 'GPU']
        if rank==0 and len(gpu_names)>0:
            num_cores = 1
            num_CPU   = 1
            num_GPU   = len(gpu_names)
            config = tf.ConfigProto(intra_op_parallelism_threads=num_cores,
                        inter_op_parallelism_threads=num_cores, 
                        allow_soft_placement=True,
                        log_device_placement=True,
                        device_count = {'CPU' : num_CPU,
                                        'GPU' : num_GPU})
            config.gpu_options.allow_growth = True
            sess = tf.Session(config=config)
            set_session(sess)
        elif tf_version >= 2:
            '''
            config = tf.compat.v1.ConfigProto()
            config.gpu_options.allow_growth = True
            sess = tf.compat.v1.Session(config=config)
            tf.compat.v1.keras.backend.set_session(sess)
            '''
            tf.debugging.set_log_device_placement(True)
            gpus = tf.config.experimental.list_physical_devices('GPU')
            if gpus:
                try:
                    for gpu in gpus:
                        tf.config.experimental.set_memory_growth(gpu, True)
                    '''
                    # Restrict TensorFlow to only allocate MEM_LIMIT amount of memory
                    MEM_LIMIT = 16000 / self.size
                    for devIdx in np.arange(len(gpus)):
                        tf.config.experimental.set_virtual_device_configuration(
                            gpus[devIdx],
                            [tf.config.experimental.VirtualDeviceConfiguration(memory_limit=MEM_LIMIT)])
                    '''
                    logical_gpus = tf.config.experimental.list_logical_devices('GPU')
                    print(len(gpus), "Physical GPUs,", len(logical_gpus), "Logical GPUs")
                except RuntimeError as e:
                    print(e)
​
    ITERS = 5 
    matsize = 1000
    print('Perform TF MATMUL on every process using square matrix size of ', matsize, ' for ', ITERS, ' iterations.')
   
    arr = np.ones((matsize,matsize))
    tften = tf.constant(arr)
    for e in (range(ITERS)):
        tfout = tf.matmul(tften, tften)
        time.sleep(10)
​
    elapse = time.time() - start        
    print(" Average elapsed time per iteration = ", sum_elapse/(ITERS if ITERS else 1))
