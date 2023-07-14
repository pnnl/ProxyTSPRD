import os
import sys
import glob
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import seaborn as sns

from support_nsys_plot import *
from plot_cuda import *
from plot_tf import *

_RUN_TYPE = "infer"
_FOLDER_NAME = "onnx" # train, inf_b1, inf_b2048, inf_ait, onnx, postquant

_DATA_DIR = "/qfs/projects/pacer/proxytsprd/output/hipc23/profiles/"
_PLOT_DIR = "/qfs/projects/pacer/proxytsprd/plots/paper/hipc23/"

ng_suffix = "ng32"
mgpu_list = ["None"]
model_list = ["lstm", "cnn", "stgcng"]
framework_list = ["pt", "tf"]
app_list = ["grid"]
dtype_list = ["fp32", "fp64", "amp"]
infer_suffix = [""]
fig_size = (20, 8)
if _FOLDER_NAME in ["inf_b1"]:
    ng_suffix = "ng1"
    mgpu_list = ["None"]
elif _FOLDER_NAME == "inf_b2048":
    ng_suffix = "ng1"
elif _FOLDER_NAME == "inf_ait":
    ng_suffix = "ng1"
    model_list = ["cnn"]
    framework_list = ["pt"]
    dtype_list = ["fp16"]
    mgpu_list = ["None"]
    app_list = ["grid"]
    infer_suffix = ["infer_1", "infer_ait"]
    fig_size = (4, 6)
elif _FOLDER_NAME == "onnx":
    ng_suffix = "ng1"
    model_list = ["lstm", "cnn"]
    mgpu_list = ["None"]
    app_list = ["grid"]
    infer_suffix = ["infer_onnx"]
    fig_size = (16, 6)
elif _FOLDER_NAME == "postquant":
    ng_suffix = "ng1"
    model_list = ["lstm", "cnn"]
    mgpu_list = ["None"]
    app_list = ["grid"]
    infer_suffix = ["infer_onnxtrtfp16", "infer_onnxtrti8", "infer_tftrtfp16", "infer_tftrti8"]
    fig_size = (16, 6)

if _FOLDER_NAME == "inf_b2048":
    cuda_indx = ["xfer", "mem", "event", "stream", "mod", "exec"]
    tf_indx = ["mmm", "elem_wise", "data_manip"]
    gemm_cols = ["sgemm", "dgemm", "hgemm", "igemm", "rnn"]
    data_cols = ["activation", "norm", "transform"]
    elemWise_cols = ["elem", "reduce", "arithmetic"]
    width_ratio = [1, 1, 0.5]
    height_ratio = [1, 0.67]
    bottom = 0.425
    aspect=1.5
    height=2.1
elif _FOLDER_NAME == "postquant":
    cuda_indx = ["xfer", "mem", "event", "stream", "mod", "exec"]
    tf_indx = ["mmm", "elem_wise", "data_manip"]
    gemm_cols = ["sgemm", "hgemm", "igemm"]
    data_cols = ["transform"]
    elemWise_cols = ["elem", "reduce", "arithmetic"]
    width_ratio = [1, 1]
    height_ratio = [1, 0.67]
    bottom = 0.425
    aspect=2.3
    height=2
else:
    cuda_indx = ["xfer", "mem", "event", "stream", "mod", "exec", "dev"]
    tf_indx = ["mmm", "elem_wise", "data_manip"]
    gemm_cols = ["sgemm", "dgemm", "cgemm", "gemv"]
    data_cols = ["activation", "transform"]
    elemWise_cols = ["elem", "arithmetic"]
    width_ratio = [1, 1]
    height_ratio = [1, 0.57]
    bottom = 0.395
    aspect=2.3
    height=2

_DATA_DIR = os.path.join(_DATA_DIR, _FOLDER_NAME)

def main():
    p = ''
    if (len(sys.argv) > 1):
        p = sys.argv[1]
    
    # path_list = [item for item in path_tf if pathlib.Path(item).exists() is True and os.path.getsize(item) > 0]
    path_list = find_pattern(
        app_list, model_list, framework_list, 
        mgpu_list, dtype_list, infer_suffix, 
        ng_suffix, _DATA_DIR, _FOLDER_NAME, "cudaapisum"
    )
    print(path_list)
    df_cuda = main_cuda(path_list, _FOLDER_NAME)
    cudaplot(df_cuda, p, _PLOT_DIR, _FOLDER_NAME, app_list, fig_size)

    # sys.exit(1)
    # path_list = [item for item in path_tf if pathlib.Path(item).exists() is True and os.path.getsize(item) > 0]
    path_list = find_pattern(
        app_list, model_list, framework_list, 
        mgpu_list, dtype_list, infer_suffix, 
        ng_suffix, _DATA_DIR, _FOLDER_NAME, "gpukernsum"
    )
    df_tf = main_tf(path_list, _FOLDER_NAME)
    tfplot(df_tf, p, _PLOT_DIR, _FOLDER_NAME, app_list, fig_size)

    plot_combined(df_cuda, df_tf, p)

def plot_combined(df_cuda, df_tf, p):
    df_tf.loc["mmm"] = df_tf.loc[gemm_cols].sum(axis=0)
    df_tf.loc["elem_wise"] = df_tf.loc[elemWise_cols].sum(axis=0)
    df_tf.loc["data_manip"] = df_tf.loc[data_cols].sum(axis=0)
    df_tf[df_tf < 1] = np.nan
    print(df_tf)

    melted_tf = pd.melt(df_tf.reset_index(), id_vars=["Name"])
    melted_tf["model"] = melted_tf["variable"].str.split("_", expand=True)[0]
    melted_tf["run_type"] = "tf"

    melted_cuda = pd.melt(df_cuda.reset_index(), id_vars=["Name"])
    melted_cuda["model"] = melted_cuda["variable"].str.split("_", expand=True)[0]
    melted_cuda["run_type"] = "cuda"

    melted_df = pd.concat([melted_cuda, melted_tf]).reset_index(drop=True)
    print(melted_df)

    col_order = [""]
    
    sns.set_theme(style="whitegrid")
    fg = sns.FacetGrid(melted_df, row="run_type", col='model', 
                    aspect=aspect, height=height, sharex="col", sharey="row",
                    gridspec_kws={"wspace":0.05, "hspace":0.1, "height_ratios":height_ratio, "width_ratios":width_ratio}, 
                    margin_titles=False
                    )
    fg.map_dataframe(
        draw_heatmap, 'variable', 'Name', 'value', 
        cbar=False, square=False, annot=True, fmt=".0f", cmap='RdBu_r'
    )
    fg.set(facecolor="white", ylabel="", xlabel="")
    fg.set_titles("")
    fg.fig.add_artist(mpl.lines.Line2D([0.1, 0.9], [bottom, bottom], linestyle='--'), )
    
    axes = fg.axes
    # set title
    titles = ["LSTM", "CNN", "STGCN"]
    for i, ax in enumerate(axes[0]):
        ax.set_title(titles[i])
    
    # fig.tight_layout(pad=0.0, h_pad=0.0, w_pad=0.01)
    if not p:
        fg.savefig(os.path.join(_PLOT_DIR, 'ptsprd-' + "-".join(app_list) + '-' + _FOLDER_NAME + '_v2.png'), bbox_inches='tight', dpi=300)
    else:
        fg.savefig(os.path.join(_PLOT_DIR, 'ptsprd-' + "-".join(app_list) + '_v2.png'), bbox_inches='tight', dpi=300)

def draw_heatmap(*args, **kwargs):
    data = kwargs.pop('data')
    print(data)
    d = data.pivot(index=args[1], columns=args[0], values=args[2])
    indx_values = d.index.values
    if "dev" in indx_values:
        index = cuda_indx
    elif "mmm" in indx_values:
        index = tf_indx
    d = d.loc[index]
    
    ax = sns.heatmap(d, **kwargs)
    xticks = [','.join(c.split('_')[1:3]) for c in d.columns]
    ax.set_xticklabels(xticks, rotation=40, ha='right')
    # ax.set_yticklabels(, rotation=0)
    ax.tick_params(left=False)  

if (__name__ == "__main__"):
    sys.exit(main())
