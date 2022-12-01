class ProxyApp:
    def __init__(self, platform) -> None:
        self._PLATFORM = platform

    def get_pt_dataloader(
        self,
        files,
        data_params,
        dtype,
        validation_files=None
    ):
        pass

    def get_pt_model(self):
        pass

    def get_tf_dataloader(
        self,
        files,
        data_params,
        dtype,
        validation_files=None
    ):
        pass

    def get_tf_model(self):
        pass