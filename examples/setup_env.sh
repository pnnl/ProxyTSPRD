#!/bin/sh

module purge
module load python/miniconda3.9
source /share/apps/python/miniconda3.9/etc/profile.d/conda.sh
module load cuda/11.0

export TMPDIR=/scratch/

if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
    LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
fi
echo $LD_LIBRARY_PATH

module load gcc/5.2.0 
module load openmpi/4.1.0
export HOROVOD_GPU_OPERATIONS="NCCL"
export HOROVOD_NCCL_INCLUDE="~/.conda/envs/horovod/include/"
export HOROVOD_NCCL_LIB="~/.conda/envs/horovod/lib/"
