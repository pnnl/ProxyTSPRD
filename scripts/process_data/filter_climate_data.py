import os, glob
import pandas as pd

def filter_nas(measurement_type):
    # get all files
    all_files = glob.glob("../../../../data/ISDProcessed/**/" + measurement_type + ".csv")
    all_files.sort()
    print("[INFO] Number of Files: %d" %(len(all_files)))

    unique_ids = set([])

    # read all files
    dict_of_dfs = dict()
    for i in range(49):
        # read data
        sel_file = all_files[i]
        identifier = os.path.dirname(sel_file).split("/")[-1]
        dict_of_dfs[identifier] = dict()
        dict_of_dfs[identifier]["filepath"] = sel_file
        dict_of_dfs[identifier]["data"] = pd.read_csv(sel_file, index_col="Unnamed: 0", parse_dates=True)#.resample('1H').mean()
        
        # atleast 80% data
        df_count = dict_of_dfs[identifier]["data"].count().sort_values()
        suff_data = df_count[df_count > 7000]
        print(sel_file, suff_data.index.values.shape)
        
        # unique list of ids
        if len(unique_ids) == 0:
            unique_ids = set(suff_data.index.values)
        else:
            unique_ids = unique_ids & set(suff_data.index.values)

    return unique_ids, dict_of_dfs

def save_frame(unique_ids, list_of_df_dicts, name_replacement_dict):
    # print(dict_of_dfs)
    for measurement_type in list_of_df_dicts.keys():
        dict_of_dfs = list_of_df_dicts[measurement_type]
        for k in dict_of_dfs:
            processed_df = dict_of_dfs[k]["data"].loc[:, unique_ids].ffill().bfill()
            print("[INFO] Shape of %s dataframe: %s" %(k, processed_df.dropna().shape))
            processed_df.to_csv(dict_of_dfs[k]["filepath"].replace(measurement_type + ".csv", "wona_" + name_replacement_dict[measurement_type] + ".csv"))

if __name__ == "__main__":
    temp_ids, temp_dict = filter_nas("temperature")
    press_ids, press_dict = filter_nas("pressure")

    unique_ids = temp_ids & press_ids
    print("[INFO] Number of unique ids: %d" %(len(unique_ids)))
    
    save_frame(
        list(unique_ids),
        {"temperature": temp_dict, "pressure": press_dict}, 
        {"temperature": "temp", "pressure": "pressure"}
    )
