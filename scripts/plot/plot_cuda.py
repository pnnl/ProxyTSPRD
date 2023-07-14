import os, sys
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

def main_cuda(path_list, folder_name):
    
    # sys.exit(path_list)
    #path_list = [item for item in path_cuda if pathlib.Path(item).exists() is True and is_blank(item) is False]
    index = ["xfer", "mem", "event", "stream", "mod", "exec", "dev"]
    #index = ["xfer", "mem", "event", "stream", "mod", "exec"]
    # index = ["xfer", "mem", "event", "stream", "exec"]
    
    nrows, ncols = len(index), len(path_list)
    #scale = 2
    #if ncols < nrows:
    #scale = nrows/2
    #fig, ax = plt.subplots(figsize=(ncols*scale, nrows))
    # width = ncols * 1.3
    # height = nrows
    # if folder_name == "inf_ait":
    #     width = ncols * 2
    # if folder_name == "inf_b2048":
    #     width = ncols * 0.5
    data = np.zeros(shape=(nrows, ncols))
    xticks = []

    pfs = []
    for pf in path_list:
        if len(pf) == 0: continue
        list_of_frames = []
        # sys.exit(pf)
        path_split = os.path.basename(pf[0]).split("_")
        
        # print(path_split[2].split("climate")[1].split("grid"))
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
            # print(label)
            # sys.exit(1)
            # sys.exit(path_split)
        elif folder_name == "postquant":
            print(path_split, label)
            text_label = path_split[12]
            if "onnx" in text_label:
                temp_label = text_label[:4].upper() + "-" + text_label[4:7].upper() + "-" + text_label[7:].upper().replace('I8', "INT8")
            else:
                temp_label = text_label[:2].upper() + "-" + text_label[2:5].upper() + "-" + text_label[5:].upper().replace('I8', "INT8")
            
            label = label.split("_")[0] + "_" + label.split("_")[1] + "_" + temp_label

        # print(label)
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
            list_of_frames.append(cdf["Time (%)"])
        
        if len(list_of_frames) == 0:
            continue
        cdf = pd.concat(list_of_frames, axis=1).mean(axis=1)
        cdf.name = label
        pfs.append(cdf)
        # print(cdf)
        # for i in range(nrows):
        #     if (index[i] in cdf.index.values):
        #         data[index.index(index[i])][j] = cdf.loc[cdf.index==index[i], 'Time (%)'].iloc[0]

        # j += 1
    df_pfs = pd.concat(pfs, axis=1).loc[index]
    print(df_pfs)
    
    return df_pfs

def cudaplot(df_pfs, p, plot_dir, folder_name, app_list, fig_size):
    data = df_pfs.values
    # print(data.values)

    data[data == 0] = np.nan
    
    mask = np.zeros_like(data)
    mask[np.isnan(data)] = True

    # print(data)
    # sys.exit(1)
    sns.set_theme(style="whitegrid")
    sns.set(font_scale=2.2)

    fig, ax = plt.subplots(figsize=fig_size)
    xticks = [','.join(c.split('_')[:3]) for c in df_pfs.columns]
    # fig, ax = plt.subplots(figsize=(20, 6))
    sns.heatmap(data=data, xticklabels=xticks, yticklabels=df_pfs.index, cbar=False, annot=True, fmt=".0f", cmap='RdBu_r', ax=ax)
    ax.set_xticklabels(xticks, rotation=40, ha='right')
    ax.set_yticklabels(ax.get_yticklabels(), rotation=0, ha='right')
    ax.set_facecolor('white')

    fig.tight_layout(pad=0.0, h_pad=0.0, w_pad=0.01)
    if not p:
        fig.savefig(os.path.join(plot_dir, 'ptsprd-' + "-".join(app_list) + '-' + folder_name + '-cuda_v2.png'), bbox_inches='tight', dpi=300)
    else:
        fig.savefig(os.path.join(plot_dir, 'ptsprd-' + "-".join(app_list) + '-cuda-inf_v2.png'), bbox_inches='tight', dpi=300)
    #plt.show()

def cuda_df_manip(df, ngpus):
    cdf = df[['Time (%)', 'Total Time (ns)', 'Name']]
    cdf.loc[cdf['Name'].str.contains(r'Memcpy', case=False), 'Name'] = "xfer"
    cdf.loc[cdf['Name'].str.contains(r'Alloc|Memset|Free|Mem', case=False), 'Name'] = "mem"
    cdf.loc[cdf['Name'].str.contains(r'Event|Query', case=False), 'Name'] = "event"
    cdf.loc[cdf['Name'].str.contains(r'Stream', case=False), 'Name'] = "stream"
    cdf.loc[cdf['Name'].str.contains(r'Module|Link', case=False), 'Name'] = "mod"
    cdf.loc[cdf['Name'].str.contains(r'Launch|SetDouble|SetDouble|FuncSet|FuncGet|GetParameter', case=False), 'Name'] = "exec"
    cdf.loc[cdf['Name'].str.contains(r'Init|Ctx|Device', case=False), 'Name'] = "dev"
    cdf2 = cdf.groupby(['Name'],as_index=False).agg({'Time (%)': 'sum', 'Total Time (ns)': 'sum'})
    cdf2['Time (%)'] = cdf2['Time (%)'].div(ngpus).round(2)
    #cdf2['Time (%)'] = cdf2['Time (%)'].replace({0.0:np.nan, 0:np.nan})
    cdf2['Time (%)'].replace({0.0:np.nan, 0:np.nan}, inplace=True)
    cdf2.loc[cdf2['Time (%)']<1, ['Time (%)']] = np.nan
    cdf2['Total Time (ns)'] = cdf2['Total Time (ns)'].div(ngpus).round(2)
    #cdf2['Total Time (ns)'] = cdf2['Total Time (ns)'].replace({0.0:np.nan, 0:np.nan})
    cdf2['Total Time (ns)'].replace({0.0:np.nan, 0:np.nan}, inplace=True)
    return cdf2