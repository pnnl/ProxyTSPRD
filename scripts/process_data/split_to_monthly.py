import os, sys
import glob
import pandas as pd

def save_monthly_files(df_mon, old_filepath, output_dir):
    # fetch details
    filename = old_filepath.split("/")[-1]
    folder_name = str(df_mon.index[0]).split('-')[0] + str(df_mon.index[0]).split('-')[1]
    
    # new paths
    new_filedir = os.path.join(output_dir, folder_name)
    new_filepath = os.path.join(new_filedir, filename)
    print(new_filedir, df_mon.shape)

    # create directory if doesn't exist
    if not os.path.exists(new_filedir):
        os.makedirs(new_filedir)
    
    df_mon.to_csv(new_filepath)

FILE_TYPE = "wona_pressure"
if __name__ == "__main__":
    files = glob.glob(f"../../../data/ISDProcessed/**/%s.csv" %(FILE_TYPE))
    files.sort()
    # print(files)

    for f in files:
        df = pd.read_csv(f, index_col=[0], parse_dates=True)
        df.groupby(df.index.month).apply(
            save_monthly_files, 
            old_filepath=f, 
            output_dir="../../../data/ISDMonthly/"
        )