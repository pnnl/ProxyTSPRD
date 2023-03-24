from .datareaders import GridDataGenerator_TF 
from .datareaders import GridDataGenerator_TFConv2D
from ..main import LSTMProxyAppTF
from ..main import CNNProxyAppTF
from ..main import GCNProxyAppTF

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
    
class GridGCNProxyAppTF(GCNProxyAppTF):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = GridDataGenerator_TFConv2D(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)
