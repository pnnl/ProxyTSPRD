import os, re, glob
import math
import functools
import operator

def find_pattern(app_list, model_list, framework_list, mgpu_list, dtype_list, infer_suffix, ng_suffix, data_dir, folder_name, nsys_suffix):
    path_list = []
    for app in app_list:
        for model in model_list:
            for framework in framework_list:
                for mgpu in mgpu_list:
                    for _dtype in dtype_list:
                        for infsuf in infer_suffix:
                            if ((app=="grid") & (framework=="pt") & (folder_name=="train")):
                                pattern = "qdrep_report_" + model + "*_" + ng_suffix + "_*_mp" + _dtype + "_mgpu" + mgpu + "*" + nsys_suffix + ".csv"
                            else:
                                pattern = "qdrep_report_" + app + model + framework + "*_" + ng_suffix + "_*_mp" + _dtype + "_mgpu" + mgpu + "*" + infsuf + "*" + nsys_suffix + ".csv"
                            
                            specific_files = glob.glob(os.path.join(data_dir, pattern))
                            specific_files.sort()
                            print("[INFO] Number of files (%s, %s, %s, %s, %s, %s): %d" %(app, model, framework, mgpu, _dtype, infsuf, len(specific_files)))
                            path_list.append(specific_files)

    return path_list

def factors(number):
    x = int(math.sqrt(number))
    while(number % x):
        x += 1
    y = int(number/x)
    if x > y:
        return [y, x]
    return [x, y]

def is_blank(file):
    content = open(file, 'r').read()
    if re.search(r'^\s*$', content):
        return True
    return False

def titlegen(f):
    model = ""
    i = start = f.rfind('report')+len('report')+1
    while (f[i] != '_'):
        model += f[i]
        i += 1
    title = f[f.rfind(model)+len(model)+1:f.rfind(model)+len(model)+3]
    st = '_ng'
    en = '_nc'
    x = f[f.find(st)+len(st):f.rfind(en)]
    if (f.find('tonga') != -1):
        title += ',' + 'V100(' + x + ')'
    if (f.find('a100') != -1):
        title += ',' + 'A100(' + x + ')'
    if (f.find('mp1') != -1):
        title += ',' + 'MP'
    return title

def flattenL(L):
    islist = map(lambda x: isinstance(x, list), L)
    if (all(islist)):
        L1 = functools.reduce(operator.concat, L) 
        return flattenL(L1)
    else:
        return L