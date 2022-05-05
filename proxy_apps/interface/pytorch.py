from .main import Interface

class PyTorch(Interface):
    def __init__(
        self, 
        machine_name, 
        data_type, 
        n_epochs, 
        batch_size
    ) -> None:
        super().__init__(machine_name, data_type, n_epochs, batch_size)

    def init_dataloader(self):
        super().init_dataloader()
        pass
    
    def init_model(
        self,
        model_name
    ):
        self.model_name = model_name

    

