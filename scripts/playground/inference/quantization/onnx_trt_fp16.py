import os
os.environ["CUDA_MODULE_LOADING"] = "LAZY"

import torch
import onnxruntime as ort

# onnx model
# onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridLSTMProxyAppPT/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
# onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridCNNProxyAppPT/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
# onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridCNNProxyAppTF/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridLSTMProxyAppTF/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"

# set providers to ['TensorrtExecutionProvider', 'CUDAExecutionProvider'] with TensorrtExecutionProvider having the higher priority.
so = ort.SessionOptions()
so.graph_optimization_level = ort.GraphOptimizationLevel.ORT_ENABLE_ALL
so.intra_op_num_threads = 1
so.inter_op_num_threads = 1

providers = [
    ('TensorrtExecutionProvider', {
        'device_id': 0,
        'trt_max_workspace_size': 2147483648,
        'trt_fp16_enable': True
        # 'trt_engine_cache_path':'./trt_cache'
    }),
    'CUDAExecutionProvider'
]

sess = ort.InferenceSession(
    onnx_modelpath, 
    so, 
    providers=providers
)

batch_size = 2048
bw_size = 60 
n_features = 136
inputs = torch.rand(
    size=(batch_size, bw_size, n_features),
    dtype=torch.float
)

if "AppPT" in onnx_modelpath:
    input={"input": inputs.numpy()}
    output=["output"]
else:
    input={"input_1": inputs.numpy()}
    output=["output_1"]
# warmup run
y_onnx = sess.run(output, input)

import time
start_time = time.perf_counter()
y_onnx = sess.run(output, input)
print("[INFO] Inference Time: %f" %(time.perf_counter()-start_time))