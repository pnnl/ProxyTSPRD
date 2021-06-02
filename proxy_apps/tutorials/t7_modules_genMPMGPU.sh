#!/bin/sh
#SBATCH -A pacer
#SBATCH -t 5:00:00
#SBATCH -N 1
#SBATCH -p a100
#SBATCH --gres=gpu:2
#SBATCH -J e50_deepDMD_genMPMGPU
#SBATCH -o logs/v7/out_e50_srun_genMPMGPU.txt
#SBATCH -e logs/v7/err_e50_srun_genMPMGPU.txt

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.0

conda activate pacer_ml_grid

export TMPDIR=/scratch/
python ./t7_TimeSeriesPrediction_GenMPMGPU.py 50 v7