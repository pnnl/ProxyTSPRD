from .data_readers import ClimateDataGenerator_PT, ClimateDataGenerator_TF
from ..lstm import LSTMProxyAppPT, LSTMProxyAppTF
from ..cnn import CNNProxyAppPT, CNNProxyAppTF

class ClimateLSTMProxyAppPT(LSTMProxyAppPT):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = ClimateDataGenerator_PT(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)

class ClimateCNNProxyAppPT(CNNProxyAppPT):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = ClimateDataGenerator_PT(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)

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