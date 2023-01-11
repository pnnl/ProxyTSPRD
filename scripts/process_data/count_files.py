import glob

files = glob.glob("../../../data/ISDMonthly/**/wona_temp.csv", recursive=True)
print(len(files))