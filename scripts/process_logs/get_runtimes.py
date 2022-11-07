import os
import re
import glob
import json
import numpy as np
import pandas as pd

_DATA_DIR = '../../job_scheduling/cobalt/logs/'

data_files = glob.glob(_DATA_DIR + "*_out")
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
        result.append([basename_comps[0], basename_comps[1], int(basename_comps[2]), basename_comps[3], t])

print(pd.DataFrame(result, columns=['model', 'mgpu_strategy', 'n_nodes', 'dtype', 'runtime']))
