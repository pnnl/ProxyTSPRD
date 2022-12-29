import os, re, sys, glob
import numpy as np
import pandas as pd
from timezonefinder import TimezoneFinder

def get_us_stations(station_list):
    station_list = pd.read_csv(
            station_list,
            dtype={'USAF': str, 'WBAN': str}
        )
    station_list["id"] = station_list['USAF'] + station_list['WBAN']
    us_stations = [(11-len(s))*'0'+s for s in station_list.loc[station_list["CTRY"]=="US", "id"].values]

    return us_stations

def get_station_info(avail_file, us_stations):
    avail_summary = pd.read_csv(avail_file, index_col="station")
    sel_stations = avail_summary[
        (avail_summary["count"]>50) & 
        (avail_summary["max"]==2022)
    ]
    print("[INFO] Year Range: (%d, %d)" %(sel_stations["min"].max(), sel_stations["max"].min()))
    print("[INFO] Total number of stations within the range: %d" %(sel_stations.shape[0]))
    sel_us_stations = [s for s in sel_stations.index.values if s in us_stations]
    us_stations_info = sel_stations.loc[sel_us_stations]
    print("[INFO] Total number of US stations within the range: %d" %(us_stations_info.shape[0]))

    return us_stations_info

def process_df(df_func):
    df_func[["WND_DA", "WND_DA_Q", "WND_Type", "WND_Speed", "WND_Speed_Q"]] = df_func["WND"].str.split(",", expand=True)
    df_func[["CIG_AGL", "CIG_AGL_Q", "CIG_AGLM", "CIG_CAVOK"]] = df_func["CIG"].str.split(",", expand=True)
    df_func[["VIS_DIS", "VIS_DIS_Q", "VIS_DISV", "VIS_DISV_Q"]] = df_func["VIS"].str.split(",", expand=True)
    df_func[["TMP_C", "TMP_C_Q"]] = df_func["TMP"].str.split(",", expand=True)
    df_func[["DEW_C", "DEW_C_Q"]] = df_func["DEW"].str.split(",", expand=True)
    df_func[["SLP_HP", "SLP_HP_Q"]] = df_func["SLP"].str.split(",", expand=True)
    # df_func[[
    #         "WND_DA", "WND_DA_Q", "WND_Type", "WND_Speed", "WND_Speed_Q", \
    #         "CIG_AGL", "CIG_AGL_Q", "CIG_AGLM", "CIG_CAVOK", \
    #         "VIS_DIS", "VIS_DIS_Q", "VIS_DISV", "VIS_DISV_Q", \
    #         "TMP_C", "TMP_C_Q", \
    #         "DEW_C", "DEW_C_Q", \
    #         "SLP_HP", "SLP_HP_Q"
    #     ]]
    
    # df2_func = df_func.loc[
    #     ((df_func["TMP_C_Q"]=='1') | (df_func["SLP_HP_Q"]=='1')), 
    #     ['STATION', 'LATITUDE', 'LONGITUDE', 'NAME', "TMP_C", "SLP_HP"]
    # ]
    if df_func.empty:
        print(df_func)
        return None # pd.DataFrame(columns=['STATION', 'LATITUDE', 'LONGITUDE', 'NAME', "TMP_C", "SLP_HP"])
    
    df_func["TMP_C"] = df_func["TMP_C"].replace("+9999", None).astype('float') / 10
    df_func["SLP_HP"] = df_func["SLP_HP"].replace("99999", None).astype('float') / 10

    # latitude = df_func['LATITUDE'].values[0]
    # longitude = df_func['LONGITUDE'].values[0]
    
    # timezone = tzfinder.timezone_at(lng=longitude, lat=latitude)
    # print(f"[INFO] Station:%s; Timezone: %s" %(df_func.iloc[0]["NAME"], timezone))

    return df_func#.tz_localize("UTC").tz_convert("America/Los_Angeles")

def process_year(year, us_stations_info, tzfinder):
    station_info = []
    temp_data = {}
    pressure_data = {}

    for s in us_stations_info.index.values:
        # read and process data
        df = pd.read_csv(
            f"../../../../data/ISD/%d/%s.csv" %(year, s), 
            index_col="DATE", parse_dates=True,
            dtype={"STATION": str}
        )
        df_out = process_df(df)
        
        # split temperature data, pressure data, and station info
        if df_out is None:
            temp_data[s] = dict()
            pressure_data[s] = dict()
        else:
            station_dict = df_out.iloc[0][
                ['STATION', 'LATITUDE', 'LONGITUDE', 'NAME']
            ].to_dict()
            station_dict["TIMEZONE"] = tzfinder.timezone_at(
                lng=station_dict['LONGITUDE'], 
                lat=station_dict['LATITUDE']
            )

            station_info.append(station_dict)
            temp_data[s] = df_out["TMP_C"].to_dict()
            pressure_data[s] = df_out["SLP_HP"].to_dict()
            # sys.exit(station_dict)
            # sys.exit(temp_data[s])

    print("[INFO] Data processing for %s is complete." %(year))
    # output folder
    year_folder = f"../../../../data/ISDProcessed/%d" %(year)
    if not os.path.exists(year_folder):
        os.makedirs(year_folder)
    
    # get station info
    df_stations = pd.DataFrame(station_info)
    # print(df_stations)
    # sys.exit(1)

    df_stations[["LOC", "STATE"]] = df_stations["NAME"].str.split(",", expand=True)
    df_stations["COUNTRY"] = df_stations["STATE"].str[-2:]
    df_stations["STATE"] = df_stations["STATE"].str[1:3]
    df_stations.to_csv(
        os.path.join(year_folder, "station_info.csv") 
    )

    # temperature frame
    temperature_frame = pd.DataFrame(temp_data).resample("1H").mean()
    temperature_frame.to_csv(
        os.path.join(year_folder, "temperature.csv") 
    )

    # pressure frame
    pressure_frame = pd.DataFrame(pressure_data).resample("1H").mean()
    pressure_frame.to_csv(
        os.path.join(year_folder, "pressure.csv") 
    )
    # return df_stations, temperature_frame, pressure_frame

if __name__=="__main__":
    
    us_stations = get_us_stations(
        "../../../../data/ISD/station_list.csv"
    )
    us_station_info = get_station_info(
        avail_file="../../../../data/ISD/files_summary.csv",
        us_stations=us_stations
    )
    all_files = glob.glob("../../../../data/ISD/1973/*.csv")
    # print(len([os.path.basename(f).split(".")[0] for f in all_files if os.path.basename(f).split(".")[0] in us_station_info.index.values]))
    # sys.exit(us_station_info)

    for y in range(1973, 2022):
        obj = TimezoneFinder()
        process_year(
            year=y, 
            us_stations_info=us_station_info, 
            tzfinder=obj
        )