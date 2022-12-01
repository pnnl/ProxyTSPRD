import pandas as pd
# import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv("../../../../output/results/runtimes.csv", index_col=[0])
print(df)
sns.set(font_scale=1.2)
for s in ["DDP", "HVD"]:
    df_sel = df.loc[df["mgpu_strategy"]==s]
    g = sns.catplot(
        data=df_sel, x="n_nodes", y="runtime", col="dtype",
        kind="bar", height=4, aspect=.6,
    )
    g.set_titles("{col_name}")
    g.fig.suptitle("PT-" + s, y=1.05)
    g.set(ylabel="runtime [in secs]", xlabel="")
    g.despine(left=True)

    g.savefig(s + ".pdf")