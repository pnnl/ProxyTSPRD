class ProxyApp:
    def __init__(self, platform) -> None:
        self._PLATFORM = platform

    def get_pt_training_data(
        self,
        training_files,
        data_params,
        dtype,
        validation_files=None
    ):
        pass

    def get_pt_model(self):
        pass

    def get_tf_data_reader(
        self,
        training_files,
        data_params,
        dtype,
        validation_files=None
    ):
        pass

    def get_tf_model(self):
        pass