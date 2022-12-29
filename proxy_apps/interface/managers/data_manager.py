import os, sys
import glob
import random
import numpy as np

class DataManager:
    def __init__(
        self,
        data_dir,
        file_format,
        train_files=-1,
        val_files=0,
        test_files=0,
        shuffle=False,
        print_rank=0
    ) -> None:
        self._PRINT_RANK = print_rank
        
        # training data directory
        self._TRAIN_DATA_DIR = os.path.join(data_dir)
        if self._PRINT_RANK == 0:
            print("[INFO] Training Data Directory:", self._TRAIN_DATA_DIR)

        # get all files
        self._FILE_FORMAT = file_format
        self._ALL_FILES = self._get_filenames(
            self._TRAIN_DATA_DIR, shuffle
        )
            
        # number of files
        self._N_FILES = len(self._ALL_FILES)
        if self._PRINT_RANK == 0:
            print("[INFO] Found %d `%s` files" %(self._N_FILES, self._FILE_FORMAT))

        # training files
        # if subset of files are not provided
        # if train_files < 0:
        self._N_TRAIN_FILES = self._N_FILES
        self._TRAIN_FILES = self._ALL_FILES
        # if subset of files are selected
        if (
            (train_files > 0) & 
            (train_files < self._N_FILES)
        ):
            self._N_TRAIN_FILES = train_files
            self._TRAIN_FILES = self._ALL_FILES[:self._N_TRAIN_FILES]
        elif train_files == 0:
            self._N_TRAIN_FILES = 0
            self._TRAIN_FILES = []
        
        # print info
        if self._PRINT_RANK == 0:
            print("[INFO] Training on %d/%d `%s` files" %(self._N_TRAIN_FILES, self._N_FILES, self._FILE_FORMAT))

        # validation files
        self._VAL_DATA_DIR, self._VAL_FILES, self._N_VAL_FILES = self._read_test_val_files(
            val_files,
            self._N_TRAIN_FILES, shuffle
        )
        if self._PRINT_RANK == 0:
            print("[INFO] Validation on %d/%d `%s` files" %(self._N_VAL_FILES, self._N_FILES, self._FILE_FORMAT))
        
        # test files
        self._TEST_DATA_DIR, self._TEST_FILES, self._N_TEST_FILES = self._read_test_val_files(
            test_files,
            self._N_TRAIN_FILES+self._N_VAL_FILES, shuffle
        )
        if self._PRINT_RANK == 0:
            print("[INFO] Testing on %d/%d `%s` files" %(self._N_TEST_FILES, self._N_FILES, self._FILE_FORMAT))

    def _get_filenames(self, path, shuffle):
        # read training files and count those files
        # if file_format == "npz":
        #     files = glob.glob(path + "/*." + file_format)
        # elif self._FILE_FORMAT == "mat":
        #     files = [path + "/" + f + "/" for f in os.listdir(path)]
        # elif self._FILE_FORMAT == "*":
        files = glob.glob(os.path.join(path, self._FILE_FORMAT))
        if shuffle:
            random.shuffle(files)
        else:
            files.sort()

        # sys.exit(files)
        return files

    def _read_test_val_files(self, files, start_index=0, shuffle=False):
        # initialize
        files_dir = None
        list_of_files = []
        n_files = 0
        
        # if number of files is given
        if type(files) is int:
            n_files = files
            files_dir = self._TRAIN_DATA_DIR
            if n_files > 0:
                assert start_index < self._N_FILES, "[ERROR] Start index (%d) more than total number of files (%d)" %(start_index, self._N_FILES)
                list_of_files = self._ALL_FILES[start_index:start_index+n_files]
                
        # if a path is provided
        elif type(files) is str:
            files_dir = files
            list_of_files = self._get_filenames(
                                    files_dir, 
                                    shuffle
                                )
            n_files = len(list_of_files)

        return files_dir, list_of_files, n_files


class TimeSeriesDataManager(DataManager):
    def __init__(
        self, 
        data_dir, 
        file_format, 
        train_files=-1,
        val_files=0,
        test_files=0,
        shuffle=False,
        print_rank=0
    ) -> None:
        super().__init__(
            data_dir=data_dir, 
            file_format=file_format, 
            train_files=train_files,
            test_files=test_files,
            val_files=val_files,
            shuffle=shuffle,
            print_rank=print_rank
        )


        
    