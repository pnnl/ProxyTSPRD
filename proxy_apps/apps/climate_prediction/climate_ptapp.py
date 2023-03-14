from .pt_datareaders import ClimateDataGenerator_PT, ClimateDataGenerator_PTATT

from ..ptapps import LSTMProxyAppPT, CNNProxyAppPT, CNNProxyAppPTATT 

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

class ClimateCNNProxyAppPTATT(CNNProxyAppPTATT):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_datagen(
        self, 
        files, 
        data_params, 
        dtype, 
        validation_files=None
    ):
        datagen = ClimateDataGenerator_PTATT(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        return super().get_datagen(datagen)

