#!/bin/bash
#SBATCH -A pacer
#SBATCH -t 00:10:00
#SBATCH -N 1
#SBATCH -p a100
#SBATCH --gres=gpu:2
#SBATCH -J horovod
#SBATCH -o out.txt
#SBATCH -e err.txt

module purge
module load python/miniconda3.9
source /share/apps/python/miniconda3.9/etc/profile.d/conda.sh
module load gcc/5.2.0 openmpi/4.1.0
export HOROVOD_GPU_OPERATIONS="NCCL"
export HOROVOD_NCCL_INCLUDE="~/.conda/envs/horovod/include/"
export HOROVOD_NCCL_LIB="~/.conda/envs/horovod/lib/"


module load cuda/11.1
conda activate horovod

horovodrun -np 4 python test_horovod.py
