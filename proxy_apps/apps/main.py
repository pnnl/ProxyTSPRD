import numpy as np
class ProxyApp:
    def __init__(
        self, platform, framework
    ) -> None:
        self._PLATFORM = platform
        self._FRAMEWORK = framework

    def get_datagen(
        self
    ):
        pass

    def get_model(self):
        pass

def get_indexer(
        n_rows, 
        window_size, 
        shift_size, 
        start_point, 
        leave_last
    ):
        return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]