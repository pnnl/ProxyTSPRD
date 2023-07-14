import os, sys
import numpy as np
import tensorflow as tf
from tensorflow.python.compiler.tensorrt import trt_convert as trt

tf_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridLSTMProxyAppTF/tf_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0/"
# tf_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridCNNProxyAppTF/tf_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0/"
# tf_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridSTGCNProxyAppTF/tf_models/gpu_ng1_nc0_e50_b2048_dfp32_mpguNone_prof0/"

# Instantiate the TF-TRT converter
converter = trt.TrtGraphConverterV2(
   input_saved_model_dir=tf_modelpath,
   precision_mode=trt.TrtPrecisionMode.FP16
)

# Convert the model into TRT compatible segments
trt_func = converter.convert()
converter.summary()

MAX_BATCH_SIZE=2048
x_test = tf.random.uniform(shape=(2048, 60, 136), dtype=tf.float32)
def input_fn():
    batch_size = MAX_BATCH_SIZE
    x = x_test[0:batch_size, :, :]
    yield [x]
 
converter.build(input_fn=input_fn)
# warm up run
trt_func(x_test[0:MAX_BATCH_SIZE, :])

import time
start_time = time.perf_counter()
trt_func(x_test[0:MAX_BATCH_SIZE, :])
print("[INFO] Inference Time: %f" %(time.perf_counter()-start_time))