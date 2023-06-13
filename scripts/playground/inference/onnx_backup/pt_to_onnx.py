import os, glob, itertools
import torch, sys
from pt_convert_run import load_model

datasets = ["Climate", "Grid"]
models = ["LSTM", "CNN"]
bw_size = 60
fw_size = 30
batch_size = 1024
MODEL_DIR = "/home/milanjain91/models/"

for d, m in itertools.product(datasets, models):
    if d == "Climate":
        directory = "ClimateApp"
    elif d == "Grid":
        directory = "ProxyTSPRD_IPDPS"

    model_path = os.path.join(MODEL_DIR, directory)
    files = glob.glob(os.path.join(model_path, d + m + "*/gpu_ng8*fp64*HVD_prof0*.pt"))

    for f in files:
        # initialize
        basedir = os.path.basename(os.path.dirname(f))
        print(os.path.basename(f))
        
        if f.split("_")[5] == "dfp64":
            torch.set_default_dtype(torch.double)
            
        n_features, pt_model, model_name = load_model(
            bw_size, fw_size, basedir, f
        )
        if f.split("_")[5] == "dfp64":
            pt_inp = torch.rand(
                size=(batch_size, bw_size, n_features),
                dtype=torch.double
            )
        else:
            pt_inp = torch.rand(
                size=(batch_size, bw_size, n_features),
                dtype=torch.float32
            )

        # load model
        pt_model.load_state_dict(
            torch.load(f, map_location=torch.device('cpu'))
        )

        # output model path
        output_path = os.path.join(os.path.dirname(f), "onnx_models")
        if not os.path.exists(output_path):
            os.makedirs(output_path)
        onnx_path = os.path.join(output_path, os.path.basename(f).split(".")[0] + ".onnx")

        torch.onnx.export(
            pt_model,                  
            pt_inp,   
            onnx_path,
            export_params=True,
            opset_version=13,
            do_constant_folding=True,
            input_names = ['input'],
            output_names = ['output'],
            dynamic_axes={'input' : {0 : 'batch_size'},
                            'output' : {0 : 'batch_size'}}
        )

