import os, sys
os.environ["CUDA_MODULE_LOADING"]="LAZY"
os.environ["INTRA_OP_NUM_THREADS"]="64"
import torch
import onnxruntime as ort
from onnxruntime.quantization import CalibrationDataReader, create_calibrator, write_calibration_table

onnx_model = "/home/milanjain91/models/ProxyTSPRD_IPDPS/GridCNNProxyAppPT/onnx_models/gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0.onnx"
batch_size = 2048
bw_size = 60 
n_features = 136
augmented_model_path = "./augmented_model.onnx"

sess_opt = ort.SessionOptions()
sess_opt.graph_optimization_level = ort.GraphOptimizationLevel.ORT_ENABLE_ALL
sess_opt.intra_op_num_threads = 64


calibrator = create_calibrator(onnx_model, [], augmented_model_path=augmented_model_path)
calibrator.set_execution_providers(["CUDAExecutionProvider"])   
# calibrator.set_sess_options(sess_opt)   
# data_reader = ImageNetDataReader(ilsvrc2012_dataset_path,
#                                 start_index=0,
#                                 end_index=calibration_dataset_size,
#                                 stride=calibration_dataset_size,
#                                 batch_size=batch_size,
#                                 model_path=augmented_model_path,
#                                 input_name=input_name)
inputs = torch.rand(
            size=(batch_size, bw_size, n_features),
            dtype=torch.float
        )
import numpy as np
np_arr = np.random.rand(batch_size, bw_size, n_features)

class TestDataReader(CalibrationDataReader):
    def __init__(self):
        pass

    def get_next(self):
        return np_arr

dataloader = TestDataReader()
calibrator.collect_data(dataloader)
write_calibration_table(calibrator.compute_range())
sys.exit(1)
providers = [
    ('TensorrtExecutionProvider', {
        'device_id': 0,
        'trt_max_workspace_size': 2147483648,
        'trt_fp16_enable': False,
        "trt_timing_cache_enable": True,
        'trt_engine_cache_enable':True,
        # 'trt_engine_cache_path':'./trt_cache'
        'trt_int8_enable': True,
        'trt_int8_use_native_calibration_table': True
    }),
    'CUDAExecutionProvider'
]

sess_opt = ort.SessionOptions()
# sess_opt.graph_optimization_level = ort.GraphOptimizationLevel.ORT_ENABLE_ALL
print("[INFO ONNX] ONNX Model: %s" %(onnx_model))
sess_opt.intra_op_num_threads = 64

sess = ort.InferenceSession(onnx_model, providers=providers, sess_options=sess_opt)

inputs = torch.rand(
            size=(batch_size, bw_size, n_features),
            dtype=torch.float
        )
y_onnx = sess.run(["output"], dict({"input": inputs.numpy()}))

import time
start_time = time.perf_counter()
y_onnx = sess.run(["output"], dict({"input": inputs.numpy()}))
print("[INFO] Inference Time: %f" %(time.perf_counter()-start_time))
yhat = torch.tensor(y_onnx[0])
# print(yhat)