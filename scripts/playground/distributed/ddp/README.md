# Overview

## Scripts
- toy_ddp_mpi.py: Script that uses a PyTorch toy model along with DDP to run the model on multiple GPUs using mpirun. 

## Run on PNNL Servers
- Get interactive shell (multiple GPUs): `srun -A pacer -p a100_shared --gres=gpu:2 -N 1 -n 8 --pty /bin/bash -i`
- Load & Setup Environment:
    - `module load python/miniconda3.9`
    - `source /share/apps/python/miniconda3.9/etc/profile.d/conda.sh`
    - `conda activate horovod`
    - `module load gcc/11.2.0`
    - `module load openmpi/4.1.4`
- Command to run on PNNL servers: `mpirun -n 2 -x PATH -x LD_LIBRARY_PATH python toy_ddp_mpi.py`
- [NOTE: needs fixing] Execute without loging into the GPU: `srun -A pacer -p a100_shared --gres=gpu:2 -N 1 -n 8 mpirun -n 2 -x PATH -x LD_LIBRARY_PATH python toy_ddp_mpi.py`

## Run on ALCF
