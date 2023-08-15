#!/bin/bash

#SBATCH -J distdgl
#SBATCH -A pacer
#SBATCH -p a100_shared
#SBATCH --gres=gpu:2
#SBATCH -N 1
#SBATCH -n 8
#SBATCH -o out.txt
#SBATCH -e err.txt

module purge
module load python/miniconda3.9
source /share/apps/python/miniconda3.9/etc/profile.d/conda.sh

module load gcc/9.1.0 
module load cuda/11.0
ulimit -u 16000

if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
    LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
fi
echo $LD_LIBRARY_PATH
module load openmpi/4.1.0
conda activate suf_py39

mpirun -n 2 -x PATH -x LD_LIBRARY_PATH  python toy_dist_dgl.py --run_device pnnl
