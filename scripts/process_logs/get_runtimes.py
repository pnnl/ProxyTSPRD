import os, sys
import re
import glob
import json
import numpy as np
import pandas as pd

data_dir_name = "onnx"
# _DATA_DIR = '/home/milanjain91/results/tpdps23/logs/sbatch/'
_DATA_DIR = '/people/jain432/pacer_remote/output/iiswc23/logs/' + data_dir_name + '/'

# _OUTPUT_DIR = '/home/milanjain91/results/tpdps23/'
_OUTPUT_DIR = '/people/jain432/pacer_remote/output/iiswc23/'

keyword = "infer"
if keyword == "train_tf":
    patterns = "o*" + keyword.split("_")[1] + "*e50*prof0*" + keyword.split("_")[0] + "*"
    test_str = "\[INFO\] Training on *"
    match_timestr = "============> \(After\) Model Fitting*"
    match_lossstr = ""
if keyword == "train_pt":
    patterns = "o*" + keyword.split("_")[1] + "*e50*prof0*" + keyword.split("_")[0] + "*"
    test_str = "\[INFO\] Training on *"
    match_timestr = "============> \(After\) Model Fitting*"
    match_lossstr = ""
elif keyword == "infer":
    if data_dir_name == "onnx":
        patterns = ["o_*ng1_*prof0*onnx"]
    else:
        patterns = ["o_*stgcn*ng1_*e1_*mgpuNone*prof0*" + keyword + "*", "o_*ng1_*e50_*mgpuHVD*prof0*" + keyword + "*"]
    test_str = "\[INFO\] Testing on *"
    # match_timestr = "============> \(After\) Inference Time*"
    # match_lossstr = "============> \(After\) (Inference|Test) Loss*"
    match_timestr = ".*After.*Inference Time.*"
    match_lossstr = ".*After.*(Inference|Test).Loss.*"

data_files = []
for p in patterns:
    sel_files = glob.glob(_DATA_DIR + p)
    sel_files.sort()
    data_files += sel_files
# print(data_files)

if keyword.split("_")[0] == "train":
    pattern = "^o_(climate|grid)(lstm|cnn|stgcng)(tf|pt)_*"
    data_files = [f for f in data_files if re.match(pattern, os.path.basename(f))]

# for f in data_files:
#     print(f)
print("[INFO] Number of data files:", len(data_files))
# sys.exit(1)

def find_runtime(filename):
    run_time = -1
    line_buffer = [None, None, None, None, None]
    loss = None
    with open(filename, 'r') as fp:
        lines = fp.readlines()
        for row in lines:
            # get time
            row = row.strip()
            if re.match(test_str, row):
                # print("Row (1):", row)
                result = re.findall(r'\d+\/\d+', row)[0].split("/")[0]
                n_testcases = int(result)
                # print(row, n_testcases)
            elif re.match(match_timestr, row):
                # print("Row (2):", row)
                result = re.findall(r'\d+\.\d+', row)
                run_time = float(result[0])

                if match_lossstr == "":
                    buffer_indx = -2
                    if keyword == "train_tf":
                        look_for = r'mean_squared_error: \d+\.\d+'
                        split_at = ":"
                    elif keyword == "train_pt":
                        look_for = r'MSE:  tensor\(\d+\.\d+'
                        split_at = "("
                    try:
                        loss = float(re.findall(look_for, line_buffer[buffer_indx])[0].split(split_at)[1])
                    except Exception as e:
                        print(row, line_buffer[buffer_indx])
                        print(e)
                        sys.exit(1)
                else:
                    pass
                # print(row, run_time, line_buffer, loss)
                # sys.exit(row)
            elif re.match(match_lossstr, row):
                # print("Row (3):", row)
                if match_lossstr == "":
                    pass
                else:
                    result = re.findall(r'\d+\.\d+', row)
                    loss = float(result[0])
                # print(row, loss)

            for i in range(4):
                line_buffer[i] = line_buffer[i+1]
            line_buffer[-1] = row
        
    return n_testcases, run_time, loss

result = []
for f in data_files:
    print(f)
    n, t, l = find_runtime(f)
    if t == -1:
        print("[WARNING] No time found in", f)
        continue
    else:
        file_basename = os.path.basename(f)
        basename_comps = file_basename.split('_')
        # print(basename_comps)
        result.append([basename_comps[1], basename_comps[8].split('mgpu')[1], int(basename_comps[3].split('ng')[1]), basename_comps[7].split('mp')[1], n, t, l])

df_out = pd.DataFrame(result, columns=['model', 'mgpu_strategy', 'n_gpus', 'dtype', 'n_cases', 'runtime', 'loss'])
df_out = df_out.sort_values(['model', 'n_gpus', 'dtype', 'mgpu_strategy']).reset_index(drop=True)[['model', 'n_gpus', 'dtype', 'mgpu_strategy', 'n_cases', 'runtime', 'loss']]

print(df_out)
df_out.to_csv(os.path.join(_OUTPUT_DIR, "runtimes_" + data_dir_name + ".csv"))
