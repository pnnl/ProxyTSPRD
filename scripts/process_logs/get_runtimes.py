import os
import re
import glob
import json
import numpy as np
import pandas as pd

_DATA_DIR = '/home/milanjain91/results/tpdps23/logs/sbatch/'

data_files = glob.glob(_DATA_DIR + "o*prof0*")
data_files.sort()
# print(data_files)
# pattern = "^o_(climatecnntf|climatecnnpt|climatelstmtf|climatelstmpt|gridcnntf|gridcnnpt|gridlstmtf|gridlstmpt)_*"
pattern = "^o_(climate|grid)(lstm|cnn)(tf|pt)_*"
data_files = [f for f in data_files if re.match(pattern, os.path.basename(f))]
# data_files = [os.path.basename(f) for f in data_files]
# print(data_files)

def find_runtime(filename):
    # print(filename)
    run_time = -1
    with open(filename, 'r') as fp:
        lines = fp.readlines()
        for row in lines:
            if re.match("============> \(After\) Model Fitting*", row):
                # print(row)
                result = re.findall(r'\d+\.\d+', row)
                run_time = float(result[0])

    return run_time

result = []
for f in data_files:
    t = find_runtime(f)
    if t == -1:
        print("[WARNING] No time found in", f)
        continue
    else:
        file_basename = os.path.basename(f)
        basename_comps = file_basename.split('_')
        # print(basename_comps)
        result.append([basename_comps[1], basename_comps[8].split('mgpu')[1], int(basename_comps[3].split('ng')[1]), basename_comps[7].split('mp')[1], t])

df_out = pd.DataFrame(result, columns=['model', 'mgpu_strategy', 'n_gpus', 'dtype', 'runtime'])
df_out = df_out.sort_values(['model', 'n_gpus', 'dtype', 'mgpu_strategy']).reset_index(drop=True)[['model', 'n_gpus', 'dtype', 'mgpu_strategy', 'runtime']]

print(df_out)
df_out.to_csv("../../../results/tpdps23/runtimes_v4.csv")
