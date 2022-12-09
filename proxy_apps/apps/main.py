class ProxyApp:
    def __init__(
        self, platform, framework
    ) -> None:
        self._PLATFORM = platform
        self._FRAMEWORK = framework

    def get_datagen(
        self,
        files,
        data_params,
        dtype,
        validation_files=None
    ):
        pass

    def get_model(self):
        pass