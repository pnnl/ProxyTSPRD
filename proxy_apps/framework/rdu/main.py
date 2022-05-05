from ..main import Framework

class RDU(Framework):
    def __init__(
        self, 
        machine_name, 
        config_file, 
        n_epochs, 
        batch_size
    ) -> None:
        super().__init__(machine_name, config_file, n_epochs, batch_size)

    def use_pytorch(self):
        super().use_pytorch()

        from .pytorch import PyTorchSN
        self.interface = PyTorchSN()
    
    def load_data(self, path):
        self.dataloader = self.interface.init_dataloader()
        self.interface.load_data()
