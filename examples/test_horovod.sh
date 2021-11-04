#!/bin/bash
#SBATCH -A pacer
#SBATCH -t 01:00:00
#SBATCH -N 1
#SBATCH -p a100
#SBATCH --ntasks-per-node=8
#SBATCH --gres=gpu:8
#SBATCH --exclusive
#SBATCH --constraint=nvlink
#SBATCH -J horovod
#SBATCH -o out.txt
#SBATCH -e err.txt

module purge
module load python/miniconda3.9
source /share/apps/python/miniconda3.9/etc/profile.d/conda.sh
module load gcc/5.2.0 
module load openmpi/4.1.0
export HOROVOD_GPU_OPERATIONS="NCCL"
export HOROVOD_NCCL_INCLUDE="~/.conda/envs/horovod/include/"
export HOROVOD_NCCL_LIB="~/.conda/envs/horovod/lib/"


module load cuda/11.0
conda activate horovod

horovodrun -np 8 python test_horovod.py
# srun --nodes=1 --ntasks=1 python test_horovod.py
# python test_horovod.py