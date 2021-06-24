#!/bin/sh
#SBATCH -A pacer
#SBATCH -t 5:00:00
#SBATCH -N 1
#SBATCH -p a100_shared
#SBATCH --gres=gpu:2
#SBATCH -J deepDMD_mgpu
#SBATCH -o logs/out_srun_mgpu.txt
#SBATCH -e logs/err_srun_mgpu.txt

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.0

conda activate pacer_ml_grid

export TMPDIR=/scratch/
python ./TimeSeriesPrediction_GenMPMGPU.py 50
