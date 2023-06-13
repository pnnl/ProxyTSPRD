#!/bin/bash

python tf_convert.py --input_file "/home/milanjain91/models/ClimateApp/ClimateCNNProxyAppTF/gpu_ng32_nc0_e50_b2048_dfp32_mpguHVD_prof0.tf" 

python -m tf2onnx.convert --saved-model ./tf_model/ --output tf_model.onnx

python onnx_runtime.py --input_file "/home/milanjain91/models/ClimateApp/ClimateCNNProxyAppTF/gpu_ng32_nc0_e50_b2048_dfp32_mpguHVD_prof0.tf"