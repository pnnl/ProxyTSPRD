class Interface:
    def __init__(
        self,
        machine_name,
        data_type,
        n_epochs,
        batch_size
    ) -> None:
        self._MACHINE_NAME = machine_name
        self._DTYPE = data_type
        self._N_EPOCHS = n_epochs
        self._BATCH_SIZE = batch_size

    def init_dataloader(self):
        pass
    
    def init_model(self):
        pass