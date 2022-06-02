from tkinter import N
import os
import numpy as np
from .main import DataLoader
from .timeseriesDLs import GridDataGenPyTorch

class GridDataLoaderPyTorch(DataLoader):
    def __init__(
        self, 
        path: str, 
        file_ext: str, 
        recursive: bool, 
        iw_params: dict,
        ow_params=None,
    ) -> None:
        super().__init__(path, file_ext, recursive)

        # list of files or directories
        if file_ext == "dir":
            self.ilist = [path + "/" + f + "/" for f in os.listdir(path)]
        
        # for windowing the data
        self.x_indexer = self.get_indexer(
            iw_params["n_rows"], 
            iw_params["window_size"], 
            iw_params["shift_size"], 
            iw_params["start_at"], 
            iw_params["n_signals"]
        )
        if ow_params is not None:
            self.y_indexer = self.get_indexer(ow_params["n_rows"], 
                ow_params["window_size"], 
                ow_params["shift_size"], 
                ow_params["start_at"], 
                ow_params["n_signals"]
            )

    def load_data(
        self,
        repeat_cols,
        d_type
    ):
        super().load_data()
        dataset = GridDataGenPyTorch(
            self.ilist, 
            self.x_indexer.shape[0], 
            self.x_indexer.shape[1], 
            repeat_cols, 
            self.x_indexer, 
            self.y_indexer, 
            d_type=d_type
        )  
        print(dataset)
        

    def get_indexer(n_rows, window_size, shift_size, start_point, leave_last):
        return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]
