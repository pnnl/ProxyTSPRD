import os
import torch
import onnxruntime

onnx_model = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridCNNProxyAppPT/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
executioner = 'CUDAExecutionProvider' if torch.cuda.is_available() else 'CPUExecutionProvider'

batch_size = 2048
bw_size = 60 
n_features = 136

so = onnxruntime.SessionOptions()
so.graph_optimization_level = onnxruntime.GraphOptimizationLevel.ORT_ENABLE_ALL
print("[INFO ONNX] ONNX Model: %s" %(onnx_model))
so.intra_op_num_threads = 64
sess = onnxruntime.InferenceSession(
    onnx_model, so, providers=[executioner]
)
print("[INFO ONNX] ONNX Model: %s" %(onnxruntime.get_device()))

inputs = torch.rand(
            size=(batch_size, bw_size, n_features),
            dtype=torch.float
        )
# warmup
y_onnx = sess.run(["output"], dict({"input": inputs.numpy()}))

import time
start_time = time.perf_counter()
y_onnx = sess.run(["output"], dict({"input": inputs.numpy()}))
print("[INFO] Inference Time: %f" %(time.perf_counter()-start_time))
yhat = torch.tensor(y_onnx[0])
# print(yhat)