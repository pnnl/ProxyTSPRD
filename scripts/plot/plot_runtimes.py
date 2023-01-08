import sys, random
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv("../../../results/tpdps23/runtimes_v3.csv", index_col=[0])
print(df)
sns.set(font_scale=1)
for m in ["lstm", "cnn"]:
    for s in ["DDP", "HVD"]:
        df = df.replace("a", "AMP").replace("fp32", "FP32").replace("fp64", "FP64")
        df_sel = df.loc[
            (df["model"].isin([mx + m for mx in ["grid", "climate"]])) & 
            (df["mgpu_strategy"]==s) & 
            (df["dtype"].isin(["AMP", "FP32", "FP64"]))
        ]
        # sys.exit(df_sel)
        # df_sel.loc[:, "runtime_climate"] = df_sel.loc[:, "runtime"] + random.uniform(0.15,0.2) * df_sel.loc[:, "runtime"]
        df_sel = df_sel.melt(id_vars=['mgpu_strategy', 'n_gpus', 'dtype', 'runtime'], var_name='model')
        # sys.exit(df_sel)
        g = sns.catplot(
            data=df_sel, x="n_gpus", y="runtime", col="dtype", col_order=["AMP", "FP32", "FP64"],
            hue="value", hue_order=["grid" + m, "climate" + m],
            kind="bar", height=2.5, aspect=0.9,
        )
        g.set_titles("{col_name}")
        g.fig.suptitle("PT-" + s, y=1.05)
        g.set(ylabel="runtime [in secs]", xlabel="")
        g.despine(left=True)

        g._legend.set_title("Dataset")
        for t, l in zip(g._legend.texts, ["Power Systems", "Climate"]):
            t.set_text(l)

        g.tight_layout()
        g.savefig(m + "_" + s + "_v3.png")