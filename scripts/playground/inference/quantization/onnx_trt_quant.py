import os 
os.environ["ORT_TENSORRT_FP16_ENABLE"] = "1"  # Enable FP16 precision
os.environ["ORT_TENSORRT_INT8_ENABLE"] = "1"  # Enable INT8 precision
os.environ["ORT_TENSORRT_INT8_CALIBRATION_TABLE_NAME"] = "calibration.flatbuffers"  # Calibration table name
os.environ["ORT_TENSORRT_ENGINE_CACHE_ENABLE"] = "1"  # Enable engine caching

import numpy as np
import onnxruntime as ort
from onnxruntime.quantization import CalibrationDataReader, create_calibrator, write_calibration_table

# onnx model
# onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridLSTMProxyAppPT/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
# onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridCNNProxyAppPT/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
# onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridLSTMProxyAppTF/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
onnx_modelpath = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridCNNProxyAppTF/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"

batch_size = 2048
bw_size = 60 
n_features = 136
np_arr = np.random.rand(batch_size, bw_size, n_features).astype("float32")
if "AppPT" in onnx_modelpath:
    input={"input": np_arr}
    output=["output"]
else:
    input={"input_1": np_arr}
    output=["output_1"]
class TestDataReader(CalibrationDataReader):
    def __init__(self):
        self.batch_size = 1
        self.data = iter([
            input,
            input
        ])
        self.start_index = 0
        self.end_index  = 1

    def get_next(self):
        if self.start_index < self.end_index:
            return next(self.data, None)
        else:
            return None
    
    def get_batch_size(self):
        return self.batch_size

dataloader = TestDataReader()

augmented_model_path = "./augmented_model.onnx"
calibrator = create_calibrator(onnx_modelpath, [], augmented_model_path=augmented_model_path)
calibrator.collect_data(dataloader)
write_calibration_table(calibrator.compute_range())

# set providers to ['TensorrtExecutionProvider', 'CUDAExecutionProvider'] with TensorrtExecutionProvider having the higher priority.
so = ort.SessionOptions()
so.graph_optimization_level = ort.GraphOptimizationLevel.ORT_ENABLE_ALL
so.intra_op_num_threads = 64

providers = [
    # ('TensorrtExecutionProvider', {
    #     'device_id': 0,
    #     'trt_max_workspace_size': 2147483648,
    #     'trt_fp16_enable': True,
    #     "trt_timing_cache_enable": True,
    #     'trt_engine_cache_enable':True,
    #     # 'trt_engine_cache_path':'./trt_cache'
    #     'trt_int8_enable': True,
    #     'trt_int8_use_native_calibration_table': True,
    #     'trt_int8_calibration_table_name': "calibration.flatbuffers"
    # }),
    'TensorrtExecutionProvider',
    'CUDAExecutionProvider'
]

sess = ort.InferenceSession(
    onnx_modelpath, 
    so, 
    providers=providers
)
# warmup run
y_onnx = sess.run(output, input)

import time
start_time = time.perf_counter()
y_onnx = sess.run(output, input)
print("[INFO] Inference Time: %f" %(time.perf_counter()-start_time))