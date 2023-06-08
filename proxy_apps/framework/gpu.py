import os, sys
from .main import Framework

class GPU(Framework):
    def __init__(
        self, 
        machine_name,
        n_gpus=0,
        n_cpus=0, # means all available CPUs
        mgpu_strategy=None,
        mixed_precision=False,
        dtype="fp64",
        mpi_rank=0
    ) -> None:
        # machine name
        super().__init__(machine_name)#, config_file, n_epochs, batch_size)
        
        # number of GPUs and CPUs
        self._N_GPUS = n_gpus
        self._N_CPUS = n_cpus

        self._MGPU_STRATEGY = mgpu_strategy
        self._MIXED_PRECISION = mixed_precision

        self._DTYPE = dtype
        self._MPI_RANK = mpi_rank

    def use_pytorch(self):
        super().use_pytorch()

        from ..interface.pytorch import PyTorchInterfaceGPU
        interface = PyTorchInterfaceGPU(
            n_gpus=self._N_GPUS,
            n_cpus=self._N_CPUS,
            mgpu_strategy=self._MGPU_STRATEGY,
            mixed_precision=self._MIXED_PRECISION,
            dtype=self._DTYPE,
            mpi_rank=self._MPI_RANK
        )

        return interface

    def use_tensorflow(self):
        super().use_tensorflow()
        
        from ..interface.tensorflow import TensorFlowInterfaceGPU
        interface = TensorFlowInterfaceGPU(
            n_gpus=self._N_GPUS,
            n_cpus=self._N_CPUS,
            mgpu_strategy=self._MGPU_STRATEGY,
            mixed_precision=self._MIXED_PRECISION,
            dtype=self._DTYPE,
            mpi_rank=self._MPI_RANK
        )

        return interface
        
        

    
            
        


        
            

    