'''
The basic hypothesis behind this verification is the fact that a model with specific precision cannot take input with a different precision. In this test, we will load the model and pass on data with a same and different precision. While it should work for same precision, it should throw error for a different precision.

Queries in mind:
1. We are storing model weights and not model itself. When we load model weight to the model, should it has same precision? What if weights and model has a different precision?
'''
import os, sys
import argparse
import numpy as np
import pandas as pd

sys.path.append("../../")

def load_model(model_path, model_parameters):
    basedir = os.path.basename(os.path.dirname(model_path))
    if "Climate" in basedir:
        print("[INFO] Selected Dataset: Climate")            
        model_parameters["n_features"] = 326
    else:
        print("[INFO] Selected Dataset: Grid")            
        model_parameters["n_features"] = 136

    model_dtype = os.path.basename(model_path).split("_")[5]
    model_name = model_dtype
    print("[INFO] Expected Dtype: %s" %(model_dtype))
    
    # select model
    if basedir[-2:] == "PT":
        import torch
        model_name += "_pt"

        if model_dtype in ["dfp32", "damp"]:
            torch.set_default_dtype(torch.float32)
        elif model_dtype in ["dfp64"]:
            torch.set_default_dtype(torch.float64)
        
        if "LSTM" in basedir:
            print("[INFO] Selected Model: PT LSTM")
            from proxy_apps.apps.ptapps import LSTMSingleLayerPT
            model = LSTMSingleLayerPT
            model_name += "_lstm"
        elif "ATT" in basedir:
            print("[INFO] Selected Model: PT CNN2D")
            from proxy_apps.apps.ptapps import PTCNN2D
            model = PTCNN2D
            model_name += "_lstm"
        else:
            print("[INFO] Selected Model: PT CNN")
            from proxy_apps.apps.ptapps import PTCNN
            model = PTCNN
            model_name += "_cnn"
        
        # load model
        loaded_model = model(
            model_name,
            model_parameters
        )
        # if model_dtype == "dfp64":
        #     loaded_model = loaded_model.double()
        weights = torch.load(
            model_path, 
            map_location=torch.device('cpu')
        )
        print("[INFO] Loaded weights dtype: %s" %(weights['dense_layer.bias'].dtype))
        loaded_model.load_state_dict(weights)
        for param in loaded_model.parameters():
            print("[INFO] Loaded model's weights dtype: %s" %(param.dtype))
    elif basedir[-2:] == "TF":
        model_name += "_tf"
        from tensorflow.keras.backend import set_floatx
        if model_dtype in ["dfp32", "damp"]:
            set_floatx("float32")
        elif model_dtype in ["dfp64"]:
            set_floatx("float64")
        
        if "LSTM" in basedir:
            print("[INFO] Selected Model: TF LSTM")
            from proxy_apps.apps.tfapps import LSTMSingleLayerTF
            model = LSTMSingleLayerTF
            model_name += "_lstm"
        else:
            print("[INFO] Selected Model: TF CNN")
            from proxy_apps.apps.tfapps import TFCNN
            model = TFCNN
            model_name += "_cnn"
        
        loaded_model = model(
            model_name,
            model_parameters
        )
        loaded_model.load_weights(model_path)
    else:
        sys.exit("Expecting a Pytorch/Tensorflow model")

    return model_name, loaded_model, model_parameters

if __name__ == "__main__":
    # user input
    parser = argparse.ArgumentParser()
    parser.add_argument("--input_file")

    args = parser.parse_args()

    # model input
    model_name = ""
    model_parameters = {
        "bw_size": 60,
        "fw_size": 30,
        "n_features": 136,
        "n_channels": 4
    }
    model_path = args.input_file

    # load model
    model_name, model, model_parameters = load_model(
        model_path, model_parameters=model_parameters
    )

    # input data
    if model_name.split("_")[1] == "pt":
        from torch import rand
        inp_tensor = rand(
            1,
            model_parameters["bw_size"],
            model_parameters["n_features"]
        )
        # if model_name.split("_")[0] == "dfp64":
        #     inp_tensor = inp_tensor.double()
            
        print("[INFO] Data type of input numpy array: %s" %(inp_tensor.dtype))
    else:
        from tensorflow.random import uniform
        inp_tensor = uniform(shape=(
            1,
            model_parameters["bw_size"],
            model_parameters["n_features"])
        )
        print("[INFO] Data type of input tensor: %s" %(inp_tensor.dtype))

    # predict
    y_out = model(inp_tensor)
    print("[INFO] Data type of output tensor: %s" %(y_out.dtype))
    # print(y_out)

