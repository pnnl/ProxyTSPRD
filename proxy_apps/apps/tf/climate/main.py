from .datareaders import ClimateDataGenerator_TF
from .datareaders import ClimateDataGenerator_TFSTGCN
from ..main import LSTMProxyAppTF
from ..main import CNNProxyAppTF
from ..main import STGCNProxyAppTF

class ClimateLSTMProxyAppTF(LSTMProxyAppTF):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = ClimateDataGenerator_TF(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)

class ClimateCNNProxyAppTF(CNNProxyAppTF):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = ClimateDataGenerator_TF(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)

class ClimateSTGCNProxyAppTF(STGCNProxyAppTF):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = ClimateDataGenerator_TFSTGCN(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)