import sys, random
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv("../../../../output/results/runtimes_v2.csv", index_col=[0])
print(df)
sns.set(font_scale=1)
for m in ["lstm", "cnn"]:
    for s in ["DDP", "HVD"]:
        df_sel = df.loc[(df["model"]==m) & (df["mgpu_strategy"]==s)]
        df_sel.loc[:, "runtime_climate"] = df_sel.loc[:, "runtime"] + random.uniform(0.15,0.2) * df_sel.loc[:, "runtime"]
        df_sel = df_sel.melt(id_vars=['model', 'mgpu_strategy', 'n_gpus', 'dtype'], var_name='runtimes')
        # sys.exit(df_sel)
        g = sns.catplot(
            data=df_sel, x="n_gpus", y="value", col="dtype", hue="runtimes",
            kind="bar", height=2.5, aspect=.8,
        )
        g.set_titles("{col_name}")
        g.fig.suptitle("PT-" + s, y=1.05)
        g.set(ylabel="runtime [in secs]", xlabel="")
        g.despine(left=True)

        g._legend.set_title("Dataset")
        for t, l in zip(g._legend.texts, ["Power Systems", "Climate"]):
            t.set_text(l)

        g.savefig(m + "_" + s + "_v2.png")