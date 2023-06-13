import os, glob, itertools
import torch, sys
from pt_convert_run import load_model

datasets = ["Climate"] # "Climate", "Grid"
models = ["LSTM", "CNN"]
bw_size = 60
fw_size = 30
batch_size = 2048
MODEL_DIR = "/home/milanjain91/models/"

device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")

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
        filename = os.path.basename(f)
        
        if filename.split("_")[5] == "dfp64":
            torch.set_default_dtype(torch.double)
            
        n_features, pt_model, model_name = load_model(
            bw_size, fw_size, basedir, f, device=device
        )
        pt_model = pt_model.to(device)
        if filename.split("_")[5] == "dfp64":
            print("It is floating point-64")
            pt_inp = torch.rand(
                size=(batch_size, bw_size, n_features),
                dtype=torch.double
            ).to(device)
        else:
            pt_inp = torch.rand(
                size=(batch_size, bw_size, n_features),
                dtype=torch.float32
            ).to(device)

        # load model
        pt_model.load_state_dict(
            torch.load(f, map_location=device)
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

