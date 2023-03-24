import time
import random,sys,os
import numpy as np
import tensorflow as tf
tf_version = tf.__version__
print("TensorFlow Version: ", tf_version)

import torch
print("PyTorch Version: ", torch.__version__)

if __name__ == "__main__":
    
    start = time.time()
    
    num_cores = os.cpu_count()
    num_CPU   = os.cpu_count()
    num_GPU   = 0
    
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
    
    ITERS = 5 
    matsize = 10
    # if rank==0:
    #     print('Perform TF MATMUL on every process using square matrix size of ', matsize, ' for ', ITERS, ' iterations.')
   
    arr = np.ones((matsize,matsize))
    tften = tf.constant(arr)
    for e in (range(ITERS)):
        #tfout = tf.matmul(tften, tften)
        time.sleep(10)

    elapse = time.time() - start        
    # sum_elapse = comm.reduce(elapse, op=MPI.SUM, root=0)
    # if rank==0:
    #     print(" Average elapsed time per iteration = ", sum_elapse/(size*(ITERS if ITERS else 1)))