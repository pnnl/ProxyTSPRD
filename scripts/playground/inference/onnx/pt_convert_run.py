import os
import torch
import numpy as np

# _PT_MODEL = "/home/milanjain91/models/ClimateApp/ClimateCNNProxyAppPT/gpu_ng32_nc0_e50_b2048_dfp32_mpguHVD_prof0.pt"

import sys
import argparse
CURR_DIR = os.path.dirname(os.path.realpath(__file__))
sys.path.append(os.path.join(CURR_DIR, "../../../../"))

from proxy_apps.apps.pt.models.cnn1d import PTCNN
from proxy_apps.apps.pt.models.lstm import LSTMSingleLayerPT

def load_model(bw_size, fw_size, basedir, tf_modelname, device=None):
    print(basedir)
    if "Climate" in basedir:
        n_features = 326
    else:
        n_features = 136
    
    # select model
    if basedir[-2:] == "PT":
        model_name = "pt"
        if "LSTM" in basedir:
            print("=======> LSTM Model <========")
            model = LSTMSingleLayerPT
            model_name += "_lstm"
        else:
            print("=======> CNN Model <========")
            model = PTCNN
            model_name += "_cnn"
    else:
        sys.exit("Expecting a Tensorflow model")

    pt_model = model(
        model_name,
        {
            "bw_size": bw_size,
            "fw_size": fw_size,
            "n_features": n_features
        },
        device=device
    )
    
    return n_features, pt_model, model_name

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--input_file")

    args = parser.parse_args()

    _model_path = args.input_file
    basedir = os.path.basename(os.path.dirname(args.input_file))
    bw_size = 60
    fw_size = 30
    batch_size = 1024

    n_features, pt_model, model_name = load_model(
        bw_size, fw_size, basedir, _model_path
    )
    pt_inp = torch.rand(
        size=(batch_size, bw_size, n_features)
    )
    # tf_model.build(input_shape=(1024, 60, 136))
    print(pt_inp.shape)
    y_before = pt_model(pt_inp)

    pt_model.load_state_dict(torch.load(_model_path, map_location=torch.device('cpu')))
    y_after = pt_model(pt_inp)

    # print("Match:", tf.equal(y_before, y_after))
    torch.onnx.export(
        pt_model,                  
        pt_inp,   
        "pt_model.onnx",
        export_params=True,
        opset_version=10,
        do_constant_folding=True,
        input_names = ['input'],
        output_names = ['output'],
        dynamic_axes={'input' : {0 : 'batch_size'},
                      'output' : {0 : 'batch_size'}}
    )

    import onnxruntime
    sess = onnxruntime.InferenceSession("pt_model.onnx", providers=['CPUExecutionProvider'])
    y_onnx = sess.run(["output"], dict({"input": pt_inp.numpy()}))
