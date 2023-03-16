from .tfdata_readers import GridDataGenerator_TF
from ..tfapps import LSTMProxyAppTF
from ..tfapps import CNNProxyAppTF

class GridLSTMProxyAppTF(LSTMProxyAppTF):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = GridDataGenerator_TF(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)

class GridCNNProxyAppTF(CNNProxyAppTF):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = GridDataGenerator_TF(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)
