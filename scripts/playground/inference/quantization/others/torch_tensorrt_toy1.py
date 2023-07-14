import os, sys
import torch
import torch_tensorrt # only loads with CUDA


CURR_DIR = os.path.dirname(os.path.realpath(__file__))
sys.path.append(os.path.join(CURR_DIR, "../onnx/"))
from pt_convert_run import load_model

sys.path.append(os.path.join(CURR_DIR, "../../../../"))
from proxy_apps.apps.pt.models.cnn1d import PTCNN
from proxy_apps.apps.pt.models.lstm import LSTMSingleLayerPT

f = "/home/milanjain91/models/ClimateApp/ClimateCNNProxyAppPT/gpu_ng32_nc0_e50_b2048_dfp32_mpguHVD_prof0.pt"

bw_size = 60
fw_size = 30
batch_size = 2048
basedir = os.path.basename(os.path.dirname(f))

device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")

# load model
n_features, pt_model, model_name = load_model(
    bw_size, fw_size, basedir, f, device=device
)
pt_model = pt_model.to(device)
pt_model.load_state_dict(
    torch.load(f, map_location=device)
)

model = pt_model.eval()  # torch module needs to be in eval (not training) mode

inputs = [
    torch_tensorrt.Input(
        min_shape=[1, 1, 16, 16],
        opt_shape=[1, 1, 32, 32],
        max_shape=[1, 1, 64, 64],
        dtype=torch.half,
    )
]
enabled_precisions = {torch.float, torch.half}  # Run with fp16

trt_ts_module = torch_tensorrt.compile(
    model, inputs=inputs, enabled_precisions=enabled_precisions
)

input_data = torch.rand(
            size=(batch_size, bw_size, n_features),
            dtype=torch.float32
        ).to(device).half()
# input_data = input_data.to("cuda").half()
result = trt_ts_module(input_data)