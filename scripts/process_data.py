import os
import glob
import json
import numpy as np
import pandas as pd

_DATA_DIR = '../../../data/ProxyTSPRD_IPDPS/ResNet50/'
# ResNet50/
# ConvLSTM/R1
# LSTM/R1
filetypes = "inf"

data_files = glob.glob(os.path.abspath(_DATA_DIR + filetypes + '*.json'))
data_files.sort()

data_list = []
if filetypes == "tp":
    for f in data_files:
        # print(f)
        filename = os.path.basename(f)
        if "shared" not in filename:
            labels = filename.split("_")
            try: 
                with open(f) as file_pointer:
                    data = json.load(file_pointer)
                    labels = labels + [data["data_loading_time"], data["training_time_module"], data["training_loss"][-1]]
                    data_list.append(labels[1:])
            except Exception as e:
                print(f)
                print(e)
                continue

    df = pd.DataFrame(data_list)
    df.columns = ['framework', 'partition', 'n_gpus', 'n_epochs', 'batch_size', 'mixed_precision', 'mgpu_strategy', 'profiler', 'data_loading_time', 'training_time', 'last_epoch_error']
    df["n_gpus"] = df["n_gpus"].str.strip('ng').astype('int')
    df["n_epochs"] = df["n_epochs"].str.strip('e').astype('int')
    df["batch_size"] = df["batch_size"].str.strip('b').astype('int')
    df["mixed_precision"] = df["mixed_precision"].str.strip('mp').astype('int')
    df["mgpu_strategy"] = df["mgpu_strategy"].str.strip('mgpu')
    df["profiler"] = df["profiler"].str.strip('prof.json').astype('int')

elif filetypes == "inf":
    for f in data_files:
        # print(f)
        filename = os.path.basename(f)
        if "shared" not in filename:
            labels = filename.split("_")
            try: 
                with open(f) as file_pointer:
                    data = json.load(file_pointer)
                    labels = labels + [data["data_loading_time"], data["inference_time"], data["inference_accuracy"], data["inference_loss"]]
                    data_list.append(labels[1:])
            except Exception as e:
                print(f)
                print(e)
                continue

    df = pd.DataFrame(data_list)
    df.columns = ['framework', 'partition', 'n_gpus', 'n_epochs', 'batch_size', 'mixed_precision', 'mgpu_strategy', 'profiler', 'data_loading_time', 'inference_time', 'inference_accuracy', 'inference_loss']
    df["n_gpus"] = df["n_gpus"].str.strip('ng').astype('int')
    df["n_epochs"] = df["n_epochs"].str.strip('e').astype('int')
    df["batch_size"] = df["batch_size"].str.strip('b').astype('int')
    df["mixed_precision"] = df["mixed_precision"].str.strip('mp').astype('int')
    df["mgpu_strategy"] = df["mgpu_strategy"].str.strip('mgpu')
    df["profiler"] = df["profiler"].str.strip('prof.json').astype('int')

print(df)
df.to_csv(_DATA_DIR + filetypes + '.csv', index=False)

