import os
import glob

if __name__=="__main__":
    files = glob.glob('/qfs/projects/pacer/milan/profiles/convlstm/train/*.qdrep')
    for f in files:
        file_dir = os.path.dirname(f)
        curr_fname = os.path.basename(f)
        updated_fname = curr_fname.replace('convlstm', 'cnn')
        #print(file_dir, "\n", curr_fname, "\n", updated_fname)
        #print(os.path.join(file_dir, updated_fname))
        os.rename(f, os.path.join(file_dir, updated_fname))
