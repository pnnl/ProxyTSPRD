import os, sys, random
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# _OUTPUT_DIR = '/home/milanjain91/results/tpdps23/'
_OUTPUT_DIR = '/people/jain432/pacer_remote/output/hipc23/'
_PLOT_DIR = "/qfs/projects/pacer/proxytsprd/plots/paper/hipc23/"

keyword = "infer"
version = "benchmark" # onnx benchmark postquant

if keyword == "train":
    df_pt = pd.read_csv(os.path.join(_OUTPUT_DIR, "runtimes_train_pt_" + version + ".csv"), index_col=[0])
    df_tf = pd.read_csv(os.path.join(_OUTPUT_DIR, "runtimes_train_tf_" + version + ".csv"), index_col=[0])

    df = pd.concat([df_pt, df_tf]).reset_index(drop=True)

elif keyword == "infer":
    df = pd.read_csv(os.path.join(_OUTPUT_DIR, "runtimes_" + version + ".csv"))
    # sys.exit(df)

splits = [[],[],[]]
for m in df.model:
    if "climate" in m:
        splits[0].append("ISD (Climate)")
    elif "grid" in m:
        splits[0].append("IEEE 64 Bus (Grid)")

    if "lstm" in m:
        splits[1].append("LSTM")
    elif "cnn" in m:
        splits[1].append("CNN")
    elif "stgcng" in m:
        if version == "benchmark": # no stgcn results for ONNX
            splits[1].append("STGCN")

    if m[-2:].upper() == "PT":
        splits[2].append("PyTorch")
    elif m[-2:].upper() == "TF":
        splits[2].append("TensorFlow")

df["dtype"] = df["dtype"].replace("a", "AMP").replace("fp16", "FP16").replace("fp32", "FP32").replace("fp64", "FP64")
df["app"] = splits[0]
df["model_name"] = splits[1]
df["framework"] = splits[2]
df = df.loc[df["dtype"].isin(["AMP", "FP32", "FP64"])]
print(df)
print(df.columns)

colors = ["#c4c9ffff", "#668bffff", "#002ba1ff", "#ea8e1aff", "#974b00ff", "#712b00ff"]
row="model_name"
if keyword=="train":
    colors = ["#c4c9ffff", "#b4bcffff", "#668bffff", "#002ba1ff", "#ea8e1aff", "#c06c00ff", "#974b00ff", "#712b00ff"]
    hue_order = ["IEEE 64 Bus (Grid), 8", "IEEE 64 Bus (Grid), 16", "IEEE 64 Bus (Grid), 32", "IEEE 64 Bus (Grid), 64", "ISD (Climate), 8", "ISD (Climate), 16", "ISD (Climate), 32", "ISD (Climate), 64"]
    row_order = ["CNN", "LSTM", "STGCN"]
    ticks = [1, 4, 10, 40, 100, 200, 400]

    df["hue"] = df["app"] + ", " + df["n_gpus"].astype("str")
    df["x_axis"] = "(" + df["framework"] + ", " + df["mgpu_strategy"] + ")"
elif keyword=="infer":
    # colors = ["#c4c9ffff", "#ea8e1aff"]
    df["hue"] = df["app"] + ", " + df["dtype"]
    df["x_axis"] = df["framework"]
    ticks = [1, 2, 5, 10, 20, 40]
    log = False

    if version == "benchmark":
        colors = ["#c4c9ffff", "#668bffff", "#002ba1ff", "#ea8e1aff", "#974b00ff", "#712b00ff"]
        hue_order = ["IEEE 64 Bus (Grid), AMP", "IEEE 64 Bus (Grid), FP32", "IEEE 64 Bus (Grid), FP64", "ISD (Climate), AMP", "ISD (Climate), FP32", "ISD (Climate), FP64"]
        row_order = ["LSTM", "CNN", "STGCN"]
        df = df.loc[df["batch_size"] == 2048]
    elif version == "sambanova":
        colors = ["#668bffff", "#974b00ff", "#712b00ff"]
        hue_order = ["IEEE 64 Bus (Grid), FP32", "ISD (Climate), FP32"]
        row_order = None
        row=None
        df["x_axis"] = df["model_name"]
    elif version == "onnx":
        df["x_axis"] = df["dtype"]
        df["hue"] = df["framework"]
        colors = ["#668bffff", "#974b00ff"]
        hue_order = ["PyTorch", "TensorFlow"]
        row_order = ["LSTM", "CNN"]
    elif version == "postquant":
        updated_labels = []
        for v in df["infer_through"].values:
            if "onnx" in v:
                temp_label = v[:4].upper() + "-" + v[4:7].upper() + "-" + v[7:].upper().replace('I8', "INT8")
            else:
                temp_label = v[:2].upper() + "-" + v[2:5].upper() + "-" + v[5:].upper().replace('I8', "INT8")
            updated_labels.append(temp_label)
        
        df["infer_through"] = updated_labels    
        df["x_axis"] = df["framework"]
        df["hue"] = df["infer_through"]
        colors = ["#c4c9ffff", "#002ba1ff", "#ea8e1aff", "#974b00ff"]
        hue_order = list(np.unique(updated_labels))
        row_order = ["LSTM", "CNN"]
        log = False
    else:
        colors = ["#c4c9ffff", "#668bffff", "#002ba1ff"]
        hue_order = ["IEEE 64 Bus (Grid), AMP", "IEEE 64 Bus (Grid), FP32", "IEEE 64 Bus (Grid), FP64"]
        row_order = ["LSTM", "CNN"]

    
df_subset = df.loc[df.model.isin(["climatecnnpt", "gridcnnpt", "climatelstmpt", "gridlstmpt", "climatecnntf", "gridcnntf", "climatelstmtf", "gridlstmtf", "climatestgcngpt", "gridstgcngpt", "climatestgcngtf", "gridstgcngtf"])]
print(df_subset[["app", "dtype", "runtime", "model", "model_name"]])

fig, ax = plt.subplots()
sns.set(font_scale=1.3)
sns.set_style("whitegrid")

# sns.barplot(x="mgpu_strategy", y="runtime", hue="dtype", data=df_subset, ax=ax)
# df_subset["runtime"].plot(kind="bar", ax=ax)
if keyword == "train":
    g = sns.catplot(
        data=df_subset, x="x_axis", y="runtime",
        col="dtype", col_order=["AMP", "FP32", "FP64"],
        row=row, row_order=row_order,
        hue="hue", hue_order=hue_order,
        kind="bar", height=2.5, aspect=1.6, palette=colors, log=True
    )
    g.set_titles("{row_name}, {col_name}")
    ticks = ticks
    g._legend.set_title("Dataset, #GPUs")
elif keyword == "infer":
    g = sns.catplot(
        data=df_subset, x="x_axis", y="runtime",
        # col="dtype", col_order=["AMP", "FP32", "FP64"],
        col=row, col_order=row_order,
        hue="hue", hue_order=hue_order,
        kind="bar", height=3, aspect=1.2, palette=colors, log=True
    )
    # g.set_xticklabels(rotation=rot, ha='right')
    axes = g.fig.axes
    if version in ["onnx", "postquant"]:
        axes[0].axhline(y = 11.79, color = "#668bffff", linestyle = ':', linewidth=2)
        axes[0].axhline(y = 14.23, color = "#974b00ff", linestyle = '--', linewidth=2)
        axes[1].axhline(y = 14.37, color = "#668bffff", linestyle = ':', linewidth=2)
        axes[1].axhline(y = 13.46, color = "#974b00ff", linestyle = '--', linewidth=2)
    g.set_titles("{col_name}")
    ticks = ticks
    if version == "onnx":
        g._legend.set_title("Framework")
    elif version == "postquant":
        g._legend.set_title("Quantization")
    else:
        g._legend.set_title("Dataset, Precision")

g.set(ylabel="runtime [in secs]", xlabel="")
# g.despine(left=True)



# g.set_yticks(ticks)
# g.set_yticklabels(ticks)

g.set(yticks = ticks, yticklabels = ticks)

g.tight_layout()
g.savefig(os.path.join(_PLOT_DIR, keyword + "_" + version + ".png"), dpi=300)

# sys.exit(1)
# for m in ["lstm", "cnn"]:
#     for s in ["DDP", "HVD"]:
#         df = df.replace("a", "AMP").replace("fp32", "FP32").replace("fp64", "FP64")
#         df_sel = df.loc[
#             (df["model"].isin([mx + m for mx in ["grid", "climate"]])) & 
#             (df["mgpu_strategy"]==s) & 
#             (df["dtype"].isin(["AMP", "FP32", "FP64"]))
#         ]
#         sys.exit(df_sel)
#         # df_sel.loc[:, "runtime_climate"] = df_sel.loc[:, "runtime"] + random.uniform(0.15,0.2) * df_sel.loc[:, "runtime"]
#         df_sel = df_sel.melt(id_vars=['mgpu_strategy', 'n_gpus', 'dtype', 'runtime'], var_name='model')
#         # sys.exit(df_sel)
#         g = sns.catplot(
#             data=df_sel, x="n_gpus", y="runtime", col="dtype", col_order=["AMP", "FP32", "FP64"],
#             hue="value", hue_order=["grid" + m, "climate" + m],
#             kind="bar", height=2.5, aspect=0.9,
#         )
#         g.set_titles("{col_name}")
#         g.fig.suptitle("PT-" + s, y=1.05)
#         g.set(ylabel="runtime [in secs]", xlabel="")
#         g.despine(left=True)

#         g._legend.set_title("Dataset")
#         for t, l in zip(g._legend.texts, ["Power Systems", "Climate"]):
#             t.set_text(l)

#         g.tight_layout()
#         g.savefig(m + "_" + s + "_v5.png")