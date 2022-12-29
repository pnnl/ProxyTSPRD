from .data_readers import GridDataGenerator_PT, GridDataGenerator_TF
from ..lstm import LSTMProxyAppPT
from ..cnn import CNNProxyAppPT

class GridLSTMProxyAppPT(LSTMProxyAppPT):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = GridDataGenerator_PT(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)

class GridCNNProxyAppPT(CNNProxyAppPT):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = GridDataGenerator_PT(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)
