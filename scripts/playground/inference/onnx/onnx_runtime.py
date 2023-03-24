import os, psutil
import onnxruntime
import argparse
import numpy as np
import tensorflow as tf

from tf_convert import load_model

parser = argparse.ArgumentParser()
parser.add_argument("--input_file")

args = parser.parse_args()

_TF_MODEL = args.input_file
basedir = os.path.basename(os.path.dirname(args.input_file))
bw_size = 60
fw_size = 30
batch_size = 1024

# initialize
n_features, tf_model, model_name = load_model(
    bw_size, fw_size, basedir, _TF_MODEL
)
tf_inp = np.random.uniform(
    size=(batch_size, bw_size, n_features)
)#.astype("float32")

print("=======> Loading TF Model <========")
tf_model.load_weights(_TF_MODEL)
y_act = tf_model.predict(tf_inp)

print("=======> ONNX Runtime <========")
onnx_model = "tf_model.onnx"
# initiate session
# sess_options = onnxruntime.SessionOptions()
# Set the intra_op_num_threads
# sess_options.intra_op_num_threads = psutil.cpu_count(logical=True)

# Providers is optional. Only needed when you use onnxruntime-gpu for CPU inference.
sess = onnxruntime.InferenceSession(onnx_model)
# print("Let's try:", sess.graph.output)
y_onnx = sess.run(["output_1"], dict({"input_1": tf_inp}))

import numpy as np
print(np.testing.assert_allclose(y_act, y_onnx[0], rtol=1e-5))