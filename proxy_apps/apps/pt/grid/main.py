from .datareaders import GridDataGenerator_PT
from .datareaders import GridDataGenerator_PTATT
from .datareaders import GridDataGenerator_PTConv2D
from .datareaders import GridDataGenerator_PTSTGCN
from ..main import LSTMProxyAppPT
from ..main import CNNProxyAppPT, CNN2DProxyAppPT
from ..main import STGCNProxyAppPT

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

class GridCNN2DProxyAppPT(CNN2DProxyAppPT):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = GridDataGenerator_PTATT(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)
    
class GridSTGCNProxyAppPT(STGCNProxyAppPT):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = GridDataGenerator_PTSTGCN(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)


