import os
import re
import glob
import json
import numpy as np
import pandas as pd

_DATA_DIR = '/home/milanjain91/results/tpdps23/logs/sbatch/'

data_files = glob.glob(_DATA_DIR + "o_*")
data_files.sort()
print(data_files)

def find_runtime(filename):
    print(filename)
    run_time = -1
    with open(filename, 'r') as fp:
        lines = fp.readlines()
        for row in lines:
            if re.match("============> \(After\)*", row):
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
        print(basename_comps)
        result.append([basename_comps[1], basename_comps[8].split('mgpu')[1], int(basename_comps[3].split('ng')[1]), basename_comps[7].split('mp')[1], t])

print(pd.DataFrame(result, columns=['model', 'mgpu_strategy', 'n_gpus', 'dtype', 'runtime']))
