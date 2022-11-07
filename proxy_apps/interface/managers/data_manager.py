import os
import glob
import numpy as np

class DataManager:
    def __init__(
        self,
        training_data_dir,
        input_file_format,
        n_training_files=-1,
        val_data_dir=None,
        print_rank=0
    ) -> None:
        self._PRINT_RANK = print_rank
        
        # training data
        self._TRAINING_DATA_DIR = os.path.join(training_data_dir)
        if self._PRINT_RANK:
            print("[INFO] Training Data Directory:", self._TRAINING_DATA_DIR)

        # read training files and count those files
        self._FILE_FORMAT = input_file_format
        if self._FILE_FORMAT == "npz":
            self._TRAINING_FILES = glob.glob(self._TRAINING_DATA_DIR + "/*." + self._FILE_FORMAT)
        elif self._FILE_FORMAT == "mat":
            self._TRAINING_FILES = [self._TRAINING_DATA_DIR + "/" + f + "/" for f in os.listdir(self._TRAINING_DATA_DIR)]
            
        # number of files
        self._N_FILES = len(self._TRAINING_FILES)
        if self._PRINT_RANK:
            print("[INFO] Found %d `%s` files" %(self._N_FILES, self._FILE_FORMAT))

        # select subset files
        self._SEL_FILES = self._N_FILES
        if ((n_training_files > 0) & (n_training_files < self._N_FILES)):
            self._SEL_FILES = n_training_files
            self._TRAINING_FILES = self._TRAINING_FILES[:self._SEL_FILES]
        if self._PRINT_RANK:
            print("[INFO] Using %d/%d `%s` files" %(self._SEL_FILES, self._N_FILES, self._FILE_FORMAT))
            
        # validation data - if any
        if val_data_dir is not None:
            self._VAL_DATA_DIR = os.path.join(val_data_dir)
            if self._PRINT_RANK:
                print("[INFO] Validation Data Directory:", self._VAL_DATA_DIR)
                print("[INFO] Validation Data Directory:", self._VAL_DATA_DIR)
        
            if self._FILE_FORMAT == "npz":
                if self._PRINT_RANK:
                    print(self._VAL_DATA_DIR + "/*." + self._FILE_FORMAT)
                self._VALIDATION_FILES = glob.glob(self._VAL_DATA_DIR + "/*." + self._FILE_FORMAT)
                self._N_VAL_FILES = len(self._VALIDATION_FILES)
            else:
                self._VALIDATION_FILES = [self._VAL_DATA_DIR + "/" + f + "/" for f in os.listdir(self._VAL_DATA_DIR)]
                self._N_VAL_FILES = len(self._VALIDATION_FILES)
        else:
            self._VALIDATION_FILES = None
            self._N_VAL_FILES = -1

    def load_training_data(self, batch_size):
        self._BATCH_SIZE = batch_size


class TimeSeriesDataManager(DataManager):
    def __init__(
        self, 
        training_data_dir, 
        input_file_format, 
        n_training_files=-1, 
        val_data_dir=None,
        print_rank=0
    ) -> None:
        super().__init__(
            training_data_dir=training_data_dir, 
            input_file_format=input_file_format, 
            n_training_files=n_training_files, 
            val_data_dir=val_data_dir,
            print_rank=print_rank
        )

    def load_training_data(self, batch_size):
        super().load_training_data(batch_size)


        
    