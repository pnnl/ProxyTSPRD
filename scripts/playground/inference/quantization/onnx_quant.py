import torch
import onnxruntime
from onnxruntime.quantization import quantize_dynamic, QuantType

onnx_model = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridLSTMProxyAppPT/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
# onnx_model = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridLSTMProxyAppTF/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"

quant_model = onnx_model.replace(".onnx", ".quant.onnx")

batch_size = 2048
bw_size = 60 
n_features = 136

quantized_model = quantize_dynamic(onnx_model, quant_model)
executioner = 'CUDAExecutionProvider' if torch.cuda.is_available() else 'CPUExecutionProvider'
print(executioner)

so = onnxruntime.SessionOptions()
so.graph_optimization_level = onnxruntime.GraphOptimizationLevel.ORT_ENABLE_ALL
so.intra_op_num_threads = 64
sess = onnxruntime.InferenceSession(
    quant_model, so, providers=[executioner]
)
print("[INFO ONNX] ONNX Model: %s" %(onnxruntime.get_device()))

inputs = torch.rand(
            size=(batch_size, bw_size, n_features),
            dtype=torch.float
        )#.half()
# warmup
if "AppPT" in onnx_model:
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

