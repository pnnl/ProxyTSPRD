import os, sys
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# CNN,PT,FP32 - 5%-4%
# CNN,TF,FP32 - 5%-6%
# STGCN, PT, FP32 - 11%-10%
# STGCN, PT, AMP - 3%
# STGCN, TF, FP32 - 17%-15%
def main_tf(path_list, folder_name):
    #path_list = [item for item in path_tf if pathlib.Path(item).exists() is True and is_blank(item) is False]
    # index = ["hgemm", "sgemm", "dgemm", "cgemm", "implicit-gemm", "mem", "activation", "fusion", "reduce", "elem", "bias", "batchnorm", "other"]
    #index = ["hgemm", "sgemm", "cgemm", "implicit-gemm", "mem", "activation", "fusion", "reduce", "elem", "bias", "batchnorm", "other"]
    # training
    # index = ["hgemm", "dgemm", "eigen", "reduce", "elem", "bias", "mem", "other"]
    index = ["hgemm", "sgemm", "dgemm", "igemm", "rnn", "arithmetic", "mem", "activation", "bias", "norm", "reduce", "transform", "elem", "other"]
    if folder_name == "inf_ait":
        index = ["hgemm", "reduce", "mem", "elem", "other"]
        index = ["hgemm", "igemm", "elem", "reduce", "mem", "transform", "elem", "other", "arithmetic", "activation", "bias", "norm"]
    if folder_name == "onnx":
        index = ["sgemm", "dgemm", "cgemm", "gemv", "fft", "elem", "transform", "arithmetic", "activation", "rnn"]
    # inference
    #index = ["hgemm", "dgemm", "eigen", "reduce", "elem", "bias", "mem", "other"]
    
    # nrows, ncols = len(index), len(path_list)
    #scale = 2
    #if ncols < (nrows/2):
    #    scale = nrows/2
    #fig, ax = plt.subplots(figsize=(ncols*scale, nrows))
    # width = ncols * 1.3
    # height = nrows
    # if folder_name == "inf_ait":
    #     width = ncols * 2
    # if folder_name == "inf_b2048":
    #     width = ncols * 0.5
    xticks = []
    
    pfs = []
    for pf in path_list:
        if len(pf) == 0: continue
        list_of_frames = []
        # print(pf)
        path_split = os.path.basename(pf[0]).split("_")
        # label = path_split[2] + "_" + path_split[8][2:] + "_" + path_split[9][4:]
        print(path_split)
        if ((path_split[2] == "lstm") or (path_split[2] == "cnn") or (path_split[2] == "stgcng")):
            label = path_split[2].upper() + "_PT_" + path_split[8][2:].upper() + "_" + path_split[9][4:]
        else:
            label = path_split[2].split("climate")[-1].split("grid")[-1][:-2].upper()[:5] + "_" + path_split[2][-2:].upper() + "_" + path_split[8][2:].upper() + "_" + path_split[9][4:]
        
        if folder_name == "inf_ait":
            label = path_split[2][:-3].split("climate")[-1].split("grid")[-1].upper()[:-2] + "_" + path_split[2][:-3].split("climate")[-1].split("grid")[-1].upper()[-2:]
            if path_split[12] == "ait":
                label += "_" + path_split[12].upper()
            else:
                label += "_AMP"
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
    
    return df_pfs

def tfplot(df_pfs, p, plot_dir, folder_name, app_list, fig_size): 
    data = df_pfs.values
    data[data == 0] = np.nan
    
    mask = np.zeros_like(data)
    mask[np.isnan(data)] = True

    sns.set_theme(style="whitegrid")
    sns.set(font_scale=2.2)

    fig, ax = plt.subplots(figsize=fig_size)
    
    # print(data)
    #ax = sns.heatmap(data=data, xticklabels=xticks, yticklabels=index, mask=mask, cbar=False, annot=True, fmt="g", cmap='RdBu_r')
    xticks = [','.join(c.split('_')[:3]) for c in df_pfs.columns]
    # fig, ax = plt.subplots(figsize=(20, 6))
    sns.heatmap(data=data, xticklabels=xticks, yticklabels=df_pfs.index, mask=mask, cbar=False, annot=True, fmt=".0f", cmap='RdBu_r', ax=ax)
    ax.set_xticklabels(xticks, rotation=40, ha='right')
    ax.set_facecolor('white')

    fig.tight_layout(pad=0.0, h_pad=0.0, w_pad=0.01)
    if not p:
        fig.savefig(os.path.join(plot_dir, 'ptsprd-' + "-".join(app_list) + '-' + folder_name + '-tf_v2.png'), bbox_inches='tight', dpi=300)
    else:
        fig.savefig(os.path.join(plot_dir, 'ptsprd-' + "-".join(app_list) + '-tf-inf_v2.png'), bbox_inches='tight', dpi=300)
    #plt.show()



def tf_df_manip(df, ngpus):
    cdf = df[['Time(%)', 'Total Time (ns)', 'Name']]
    cdf.loc[cdf['Name'].str.contains(r'ReLu|Relu|crelu', case=False), 'Name'] = "activation"
    cdf.loc[cdf['Name'].str.contains(r'cudnn::bn_|layer_norm|RowwiseMomentsCUDAKernel|LayerNorm', case=False), 'Name'] = "norm"
    cdf.loc[cdf['Name'].str.contains(r'fp16|f16|h[0-9]*cudnn|fp16_s[0-9]*|volta_fp16_s[0-9]*gemm|ampere_fp16_s[0-9]*gemm', case=False), 'Name'] = "hgemm"
    cdf.loc[cdf['Name'].str.contains(r'sgemm|s[0-9]*gemm|tensorop_s[0-9]*|CsrMMPolicy<long, float, float, float>', case=False), 'Name'] = "sgemm"
    cdf.loc[cdf['Name'].str.contains(r'dgemm|d[0-9]*gemm|tensorop_d[0-9]*|volta_dgemm|sm80_xmma_gemm_f64|CsrMMPolicy<long, double, double, double>', case=False), 'Name'] = "dgemm"
    cdf.loc[cdf['Name'].str.contains(r'cgemm|c[0-9]*gemm|tensorop_c[0-9]*', case=False), 'Name'] = "cgemm"
    cdf.loc[cdf['Name'].str.contains(r'zgemm|z[0-9]*gemm|tensorop_z[0-9]*', case=False), 'Name'] = "zgemm"
    cdf.loc[cdf['Name'].str.contains(r'implicit_gemm|xmma_new::cudnn::gemm|xmma_cudnn::gemm|ImplicitGemm', case=False), 'Name'] = "igemm"
    cdf.loc[cdf['Name'].str.contains(r'gemvx', case=False), 'Name'] = "gemv"
    cdf.loc[cdf['Name'].str.contains(r'epilogue|nchwToNhwcKernel|nhwcToNchwKernel|Cast_GPU|Transpose|SliceKernel|SwapDimension|TensorSlicingOp|concat|split|tensorflow::S2B|ShuffleInTensor3Simple', case=False), 'Name'] = "transform"
    cdf.loc[cdf['Name'].str.contains(r'scalar_constant_op|scalar_product_op|scalar_cmp_op|scal_kernel|elem|elementwise|ElementWise', case=False), 'Name'] = "elem"
    cdf.loc[cdf['Name'].str.contains(r'broadcast|scatter|reduce|ncclKernel_AllReduce', case=False), 'Name'] = "reduce"
    cdf.loc[cdf['Name'].str.contains(r'RNN|LSTM_elementWise', case=False), 'Name'] = "rnn"
    cdf.loc[cdf['Name'].str.contains(r'conv2d|conv1d|conv3d|convolution|convolve', case=False), 'Name'] = "conv"
    cdf.loc[cdf['Name'].str.contains(r'sqrt|add|Abs|mse|Mul|Div|Sub|AddV2|SquaredDifference|Mean|sum|Eigen', case=False), 'Name'] = "arithmetic"
    cdf.loc[cdf['Name'].str.contains(r'redzone|Cleanup|memcpy|copy', case=False), 'Name'] = "mem"
    cdf.loc[cdf['Name'].str.contains(r'fft|fft1d_r2c|fft1d_c2r|ifft|rfft|fft2d', case=False), 'Name'] = "fft"
    cdf.loc[cdf['Name'].str.contains(r'dgrad|wgrad|fprop', case=False), 'Name'] = "gradient"
    cdf.loc[cdf['Name'].str.contains(r'fusion|fused', case=False), 'Name'] = "fusion"
    cdf.loc[cdf['Name'].str.contains(r'BiasNCHWKernel|Bias', case=False), 'Name'] = "bias"
    cdf.loc[cdf['Name'].str.contains(r'Eigen', case=False), 'Name'] = "eigen"
    # print(cdf.loc[cdf['Name'].str.contains(r'scalar_constant_op|scalar_product_op|scalar_cmp_op|scal_kernel|elem|elementwise|ElementWise', case=False)])
    # print(cdf.loc[cdf['Name'].str.contains(r'scalar_constant_op|scalar_product_op|scalar_cmp_op|scal_kernel|elem|elementwise|ElementWise', case=False)].Name.tolist())
    cdf.loc[cdf['Name'].str.contains(r'apply_kernel|dropout|convert|cat|chunk|split|kernel|rng|comparison|Launch|KernelLaunch|slice', case=False), 'Name'] = "other"
    # sys.exit(1)
    cdf2 = cdf.groupby(['Name'],as_index=False).agg({'Time(%)': 'sum', 'Total Time (ns)': 'sum'})
    cdf2['Time(%)'] = cdf2['Time(%)'].div(ngpus).round(2)
    #cdf2['Time(%)'] = cdf2['Time(%)'].replace({0.0:np.nan, 0:np.nan})
    cdf2['Time(%)'].replace({0.0:np.nan, 0:np.nan}, inplace=True)
    cdf2.loc[cdf2['Time(%)']<1, ['Time(%)']] = np.nan
    cdf2['Total Time (ns)'] = cdf2['Total Time (ns)'].div(ngpus).round(2)
    #cdf2['Total Time (ns)'] = cdf2['Total Time (ns)'].replace({0.0:np.nan, 0:np.nan})
    cdf2['Total Time (ns)'].replace({0.0:np.nan, 0:np.nan}, inplace=True)
    # cdf2.loc[cdf2['Total Time (ns)']<1] = np.nan
    return cdf2