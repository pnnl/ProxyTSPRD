import os, sys
import numpy as np
import tensorflow as tf

tf_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridCNNProxyAppTF/tf_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0/"

converter = tf.lite.TFLiteConverter.from_saved_model(tf_modelpath)
converter.optimizations = [tf.lite.Optimize.DEFAULT]
converter.target_spec.supported_types = [tf.float16]
tflite_quant_model = converter.convert()
savedir = os.path.dirname(os.path.dirname(tf_modelpath))
tflite_model = os.path.basename(os.path.dirname(tf_modelpath)) + ".tflite"
tflite_filepath = os.path.join(savedir, tflite_model)

with open(tflite_filepath, 'wb') as f:
    f.write(tflite_quant_model)

inputs = tf.random.uniform(shape=(2048, 60, 136), dtype=tf.float16)
interpreter = tf.lite.Interpreter(tflite_filepath)
interpreter.allocate_tensors()

# Get input and output tensors.
input_details = interpreter.get_input_details()[0]['index']
output_details = interpreter.get_output_details()[0]['index']

# Test the model on random input data.
input_shape = input_details[0]['shape']
input_data = np.array(np.random.random_sample(input_shape), dtype=np.float32)
interpreter.set_tensor(input_details, input_data)

interpreter.invoke()

output_data = interpreter.get_tensor(output_details)
print(output_data)