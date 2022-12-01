import functools
import glob
import operator
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import sys
import os
import re
import matplotlib.ticker as mtick
import pathlib
import math

def deception():

    devices = ['tonga_', 'a100_']
    options = ['mp0_', 'mp1_']
    version = ['PT_', 'TF_']
    prefix  = []
    numgpus = []
    path = ''

    p = ''
    if (len(sys.argv) > 1):
        p = sys.argv[1]

    if p[:3].lower() == 'inf':
        path = './inf/qdrep_report_lstm_'
    else:
        path = './train/qdrep_report_lstm_'

    # example name: qdrep_report_lstm_PT_tonga_ng8_nc1_e20_b2048_mp0_mgpuHVD_prof1_cudaapisum.csv
    # qdrep_report_convlstm_TF_a100_ng1_nc1_e20_b2048_mp0_mgpuNone_prof1_gpumemsizesum.csv
    
    numgpus = ['mgpuNone_prof1_', 'mgpuHVD_prof1_']
    prefix = ['ng1_nc1_e20_b2048_', 'ng2_nc1_e20_b2048_', 'ng4_nc1_e20_b2048_', 'ng8_nc1_e20_b2048_', 'ng16_nc1_e20_b2048_']

    file_ext = ''
    if p[:3].lower() == 'inf':
        file_ext = 'eval_cudaapisum.csv'
    else:
        file_ext = 'cudaapisum.csv'
    
    path_cuda = [[[[[ (path + ver + dev + pref + opt + ngpu + file_ext) 
        for dev in devices  ]
        for opt in options  ]
        for ver in version  ] 
        for ngpu in numgpus ]
        for pref in prefix  ]

    path_cuda = flattenL(path_cuda)
    path_list = [item for item in path_cuda if pathlib.Path(item).exists() is True and os.path.getsize(item) > 0]
    print(prefix)

    main_cuda(path_list, p)
    
    file_ext = ''
    if p[:3].lower() == 'inf':
        file_ext = 'eval_gpukernsum.csv'
    else:
        file_ext = 'gpukernsum.csv'

    path_tf = [[[[[ (path + ver + dev + pref + opt + ngpu + file_ext) 
        for dev in devices  ]
        for opt in options  ]
        for ver in version  ] 
        for ngpu in numgpus ]
        for pref in prefix  ]
    
    path_tf = flattenL(path_tf)
    path_list = [item for item in path_tf if pathlib.Path(item).exists() is True and os.path.getsize(item) > 0]
    main_tf(path_list, p)

def main():
    p = ''
    if (len(sys.argv) > 1):
        p = sys.argv[1]
    
    # path_list = [item for item in path_tf if pathlib.Path(item).exists() is True and os.path.getsize(item) > 0]
    path_list = []
    for mgpu in ["DDP", "HVD"]:
        for _dtype in ["fp16", "fp32", "fp64", "amp"]:
            specific_files = glob.glob("/qfs/projects/pacer/proxytsprd/data/theta_profiles/profiles_updated/*lstm32_" + mgpu + "_" + _dtype + "*cudaapisum.csv")
            specific_files.sort()
            print("[INFO] Number of files (%s, %s): %d" %(mgpu, _dtype, len(specific_files)))
            path_list.append(specific_files)
    # path_list = [f for f in path_list if re.match(".*lstm32.*(fp|amp).*", os.path.basename(f))]
    # print(path_list)    
    main_cuda(path_list, p)

    # sys.exit(1)
    # path_list = [item for item in path_tf if pathlib.Path(item).exists() is True and os.path.getsize(item) > 0]
    path_list = []
    for mgpu in ["DDP", "HVD"]:
        for _dtype in ["fp16", "fp32", "fp64", "amp"]:
            specific_files = glob.glob("/qfs/projects/pacer/proxytsprd/data/theta_profiles/profiles_updated/*lstm32_" + mgpu + "_" + _dtype + "*gpukernsum.csv")
            specific_files.sort()
            print("[INFO] Number of files (%s, %s): %d" %(mgpu, _dtype, len(specific_files)))
            path_list.append(specific_files)
    # path_list.sort()
    # print("[INFO] Number of files: %d" %(len(path_list)))
    main_tf(path_list, p)

def main_cuda(path_list, p):
    
    # sys.exit(path_list)
    #path_list = [item for item in path_cuda if pathlib.Path(item).exists() is True and is_blank(item) is False]
    sns.set_theme(style="whitegrid")
    sns.set(font_scale=2)

    index = ["xfer", "mem", "event", "stream", "mod", "exec", "dev"]
    #index = ["xfer", "mem", "event", "stream", "mod", "exec"]
    # index = ["xfer", "mem", "event", "stream", "exec"]
    
    nrows, ncols = len(index), len(path_list)
    #scale = 2
    #if ncols < nrows:
    #scale = nrows/2
    #fig, ax = plt.subplots(figsize=(ncols*scale, nrows))
    fig, ax = plt.subplots(figsize=(ncols, nrows))
    data = np.zeros(shape=(nrows, ncols))
    xticks = []

    pfs = []
    for pf in path_list:
        if len(pf) == 0: continue
        list_of_frames = []
        # print(pf)
        label = "_".join(os.path.basename(pf[0]).split("_")[2:5])
        xticks.append(label)
        for f in pf:
            # f = path_list[j]
            # title = titlegen(f)
            # title = os.path.basename(f).split("_")[4]
            # print(title)
            try:
                df = pd.read_csv(f, skip_blank_lines=True)
            except Exception as e:
                print(f)
                print(e)
                continue
            # sys.exit(df)
            # ngpus = int(f[f.find('_ng')+3:f.find('_nc')])
            cdf = cuda_df_manip(df, 1) 
            cdf = cdf.set_index("Name")
            list_of_frames.append(cdf["Time(%)"])
        
        if len(list_of_frames) == 0:
            continue
        cdf = pd.concat(list_of_frames, axis=1).mean(axis=1)
        cdf.name = label
        pfs.append(cdf)
        # print(cdf)
        # for i in range(nrows):
        #     if (index[i] in cdf.index.values):
        #         data[index.index(index[i])][j] = cdf.loc[cdf.index==index[i], 'Time(%)'].iloc[0]

        # j += 1
    df_pfs = pd.concat(pfs, axis=1).loc[index]
    print(df_pfs)
    data = df_pfs.values
    # print(data.values)

    data[data == 0] = np.nan
    mask = np.zeros_like(data)
    mask[np.isnan(data)] = True
    print(data)
    # sys.exit(1)
    xticks = [','.join(c.split('_')[1:]) for c in df_pfs.columns]
    ax = sns.heatmap(data=data, xticklabels=xticks, yticklabels=df_pfs.index, cbar=False, annot=True, fmt=".2f", cmap='RdBu_r')
    ax.set_xticklabels(xticks, rotation=40, ha='right')
    ax.set_facecolor('white')

    fig.tight_layout(pad=0.0, h_pad=0.0, w_pad=0.01)
    if not p:
        fig.savefig('ptsprd-lstm-cuda.pdf', bbox_inches='tight')
    else:
        fig.savefig('ptsprd-lstm-cuda-inf.pdf', bbox_inches='tight')
    #plt.show()

def main_tf(path_list, p):
    #path_list = [item for item in path_tf if pathlib.Path(item).exists() is True and is_blank(item) is False]
    sns.set_theme(style="whitegrid")
    sns.set(font_scale=2)

    #index = ["hgemm", "sgemm", "dgemm", "cgemm", "implicit-gemm", "mem", "activation", "fusion", "reduce", "elem", "bias", "batchnorm", "other"]
    #index = ["hgemm", "sgemm", "cgemm", "implicit-gemm", "mem", "activation", "fusion", "reduce", "elem", "bias", "batchnorm", "other"]
    # training
    # index = ["hgemm", "dgemm", "eigen", "reduce", "elem", "bias", "mem", "other"]
    index = ["hgemm", "dgemm", "reduce", "elem", "mem", "other"]
    # inference
    #index = ["hgemm", "dgemm", "eigen", "reduce", "elem", "bias", "mem", "other"]
    
    nrows, ncols = len(index), len(path_list)
    #scale = 2
    #if ncols < (nrows/2):
    #    scale = nrows/2
    #fig, ax = plt.subplots(figsize=(ncols*scale, nrows))
    fig, ax = plt.subplots(figsize=(ncols, nrows))
    data = np.zeros(shape=(nrows, ncols))

    xticks = []
    
    pfs = []
    for pf in path_list:
        if len(pf) == 0: continue
        list_of_frames = []
        # print(pf)
        label = "_".join(os.path.basename(pf[0]).split("_")[2:5])
        # xticks.append(label)
        for f in pf:
            # f = path_list[j]
            # title = titlegen(f)
            # title = os.path.basename(f).split("_")[4]
            # print(title)
            # xticks.append(title)
            try:
                df = pd.read_csv(f, skip_blank_lines=True)
            except Exception as e:
                print(f)
                print(e)
                continue
            # sys.exit(df)
            # ngpus = int(f[f.find('_ng')+3:f.find('_nc')])
            cdf = tf_df_manip(df, 1) 
            cdf = cdf.set_index("Name")
            list_of_frames.append(cdf["Time(%)"])
        
        if len(list_of_frames) == 0:
            continue
        cdf = pd.concat(list_of_frames, axis=1).mean(axis=1)
        cdf.name = label
        pfs.append(cdf)
        # print(cdf)
        # for i in range(nrows):
        #     if (index[i] in cdf.index.values):
        #         data[index.index(index[i])][j] = cdf.loc[cdf.index==index[i], 'Time(%)'].iloc[0]

        # j += 1
    df_pfs = pd.concat(pfs, axis=1).loc[index]
    print(df_pfs)
    data = df_pfs.values
    
    data[data == 0] = np.nan
    mask = np.zeros_like(data)
    mask[np.isnan(data)] = True
    # print(data)
    #ax = sns.heatmap(data=data, xticklabels=xticks, yticklabels=index, mask=mask, cbar=False, annot=True, fmt="g", cmap='RdBu_r')
    xticks = [','.join(c.split('_')[1:]) for c in df_pfs.columns]
    ax = sns.heatmap(data=data, xticklabels=xticks, yticklabels=df_pfs.index, mask=mask, cbar=False, annot=True, fmt=".2f", cmap='RdBu_r')
    ax.set_xticklabels(xticks, rotation=40, ha='right')
    ax.set_facecolor('white')

    fig.tight_layout(pad=0.0, h_pad=0.0, w_pad=0.01)
    if not p:
        fig.savefig('ptsprd-lstm-tf.pdf', bbox_inches='tight')
    else:
        fig.savefig('ptsprd-lstm-tf-inf.pdf', bbox_inches='tight')
    #plt.show()

def cuda_df_manip(df, ngpus):
    cdf = df[['Time(%)', 'Total Time (ns)', 'Name']]
    cdf.loc[cdf['Name'].str.contains(r'Memcpy', case=False), 'Name'] = "xfer"
    cdf.loc[cdf['Name'].str.contains(r'Alloc|Memset|Free|Mem', case=False), 'Name'] = "mem"
    cdf.loc[cdf['Name'].str.contains(r'Event|Query', case=False), 'Name'] = "event"
    cdf.loc[cdf['Name'].str.contains(r'Stream', case=False), 'Name'] = "stream"
    cdf.loc[cdf['Name'].str.contains(r'Module|Link', case=False), 'Name'] = "mod"
    cdf.loc[cdf['Name'].str.contains(r'Launch|SetDouble|SetDouble|FuncSet|FuncGet|GetParameter', case=False), 'Name'] = "exec"
    cdf.loc[cdf['Name'].str.contains(r'Init|Ctx|Device', case=False), 'Name'] = "dev"
    cdf2 = cdf.groupby(['Name'],as_index=False).agg({'Time(%)': 'sum', 'Total Time (ns)': 'sum'})
    cdf2['Time(%)'] = cdf2['Time(%)'].div(ngpus).round(2)
    #cdf2['Time(%)'] = cdf2['Time(%)'].replace({0.0:np.nan, 0:np.nan})
    cdf2['Time(%)'].replace({0.0:np.nan, 0:np.nan}, inplace=True)
    cdf2['Total Time (ns)'] = cdf2['Total Time (ns)'].div(ngpus).round(2)
    #cdf2['Total Time (ns)'] = cdf2['Total Time (ns)'].replace({0.0:np.nan, 0:np.nan})
    cdf2['Total Time (ns)'].replace({0.0:np.nan, 0:np.nan}, inplace=True)
    return cdf2

def tf_df_manip(df, ngpus):
    cdf = df[['Time(%)', 'Total Time (ns)', 'Name']]
    cdf.loc[cdf['Name'].str.contains(r'fp16|f16|h[0-9]*cudnn|fp16_s[0-9]*gemm|volta_fp16_s[0-9]*gemm|ampere_fp16_s[0-9]*gemm', case=False), 'Name'] = "hgemm"
    cdf.loc[cdf['Name'].str.contains(r'sgemm|s[0-9]*gemm|tensorop_s[0-9]*gemm', case=False), 'Name'] = "sgemm"
    cdf.loc[cdf['Name'].str.contains(r'dgemm|d[0-9]*gemm|tensorop_d[0-9]*gemm|volta_dgemm', case=False), 'Name'] = "dgemm"
    cdf.loc[cdf['Name'].str.contains(r'cgemm|c[0-9]*gemm|tensorop_c[0-9]*gemm', case=False), 'Name'] = "cgemm"
    cdf.loc[cdf['Name'].str.contains(r'zgemm|z[0-9]*gemm|tensorop_z[0-9]*gemm', case=False), 'Name'] = "zgemm"
    cdf.loc[cdf['Name'].str.contains(r'implicit_gemm|xmma_new::cudnn::gemm|xmma_cudnn::gemm', case=False), 'Name'] = "igemm"
    cdf.loc[cdf['Name'].str.contains(r'conv2d|conv1d|conv3d|convolution|convolve', case=False), 'Name'] = "conv"
    cdf.loc[cdf['Name'].str.contains(r'fft|fft1d_r2c|fft1d_c2r|ifft|rfft', case=False), 'Name'] = "fft"
    cdf.loc[cdf['Name'].str.contains(r'dgrad|wgrad|fprop', case=False), 'Name'] = "gradient"
    cdf.loc[cdf['Name'].str.contains(r'redzone|Cleanup|memcpy|copy', case=False), 'Name'] = "mem"
    cdf.loc[cdf['Name'].str.contains(r'fusion|fused', case=False), 'Name'] = "fusion"
    cdf.loc[cdf['Name'].str.contains(r'broadcast|scatter|reduce|ncclKernel_AllReduce', case=False), 'Name'] = "reduce"
    cdf.loc[cdf['Name'].str.contains(r'scalar_constant_op|scalar_product_op|scalar_cmp_op|scal_kernel|elem|elementwise|LSTM_elementWise', case=False), 'Name'] = "elem"
    cdf.loc[cdf['Name'].str.contains(r'BiasNCHWKernel|Bias', case=False), 'Name'] = "bias"
    cdf.loc[cdf['Name'].str.contains(r'cudnn::bn_', case=False), 'Name'] = "batchnorm"
    cdf.loc[cdf['Name'].str.contains(r'ReLu|Relu|crelu', case=False), 'Name'] = "activation"
    cdf.loc[cdf['Name'].str.contains(r'Eigen', case=False), 'Name'] = "eigen"
    cdf.loc[cdf['Name'].str.contains(r'apply_kernel|dropout|convert|cat|chunk|split|kernel|sqrt|rng|comparison|add|Launch|Abs|KernelLaunch|slice', case=False), 'Name'] = "other"
    cdf2 = cdf.groupby(['Name'],as_index=False).agg({'Time(%)': 'sum', 'Total Time (ns)': 'sum'})
    cdf2['Time(%)'] = cdf2['Time(%)'].div(ngpus).round(2)
    #cdf2['Time(%)'] = cdf2['Time(%)'].replace({0.0:np.nan, 0:np.nan})
    cdf2['Time(%)'].replace({0.0:np.nan, 0:np.nan}, inplace=True)
    cdf2['Total Time (ns)'] = cdf2['Total Time (ns)'].div(ngpus).round(2)
    #cdf2['Total Time (ns)'] = cdf2['Total Time (ns)'].replace({0.0:np.nan, 0:np.nan})
    cdf2['Total Time (ns)'].replace({0.0:np.nan, 0:np.nan}, inplace=True)
    return cdf2

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

if (__name__ == "__main__"):
    sys.exit(main())
