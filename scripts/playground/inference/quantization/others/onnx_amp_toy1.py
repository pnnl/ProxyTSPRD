import os, sys
os.environ["OMP_NUM_THREADS"]="1"
import numpy as np
import torch
import onnx
import onnxruntime
from onnxconverter_common import auto_mixed_precision

# initialize
# onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridCNNProxyAppPT/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
# onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridLSTMProxyAppPT/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridCNNProxyAppTF/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
# onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridLSTMProxyAppTF/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"

amp_modelpath = onnx_modelpath.replace(".onnx", ".amp.onnx")

batch_size = 2048
bw_size = 60 
n_features = 136

executioner = 'CUDAExecutionProvider' if torch.cuda.is_available() else 'CPUExecutionProvider'
print(executioner)

# test data
inputs = torch.rand(
            size=(batch_size, bw_size, n_features),
            dtype=torch.float
        )

def validate_fn(res, fp16res):
    # print(res[0])
    # print(fp16res[0])
    # return np.allclose(res[0], fp16res[0], rtol=0.01)
    return True

if "AppPT" in onnx_modelpath:
    input={"input": inputs.numpy()}
else:
    input={"input_1": inputs.numpy()}

# convert to float16
onnx_model = onnx.load(onnx_modelpath)
amp_model = auto_mixed_precision.auto_convert_mixed_precision(onnx_model, input, validate_fn=validate_fn)
onnx.save(amp_model, amp_modelpath)

# start inference session
so = onnxruntime.SessionOptions()
so.graph_optimization_level = onnxruntime.GraphOptimizationLevel.ORT_ENABLE_ALL
# so.intra_op_num_threads = 64
so.intra_op_num_threads = 64 
so.inter_op_num_threads = 64
sess = onnxruntime.InferenceSession(
    amp_modelpath, so, providers=[executioner]
)
print("[INFO ONNX] ONNX Model: %s" %(onnxruntime.get_device()))

# warmup
inputs = inputs.half()
if "AppPT" in onnx_modelpath:
    input={"input": inputs.numpy()}
    output=["output"]
else:
    input={"input_1": inputs.numpy()}
    output=["output_1"]
# warmup run
y_onnx = sess.run(output, input)

# get runtime
import time
start_time = time.perf_counter()
y_onnx = sess.run(output, input)
print("[INFO (ONNX)] Inference Time: %f" %(time.perf_counter()-start_time))
