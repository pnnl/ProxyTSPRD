#!/bin/sh
#SBATCH -A pacer
#SBATCH -t 5:00:00
#SBATCH -N 1
#SBATCH -p a100
#SBATCH --gres=gpu:8
#SBATCH -J e50_deepDMD_mgpu_8
#SBATCH -o logs/v10/out_e50_srun_mgpu8.txt
#SBATCH -e logs/v10/err_e50_srun_mgpu8.txt

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.0

conda activate pacer_ml_grid

export TMPDIR=/scratch/
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
python ./t4b_TimeSeriesPrediction_MultipleGPUs.py 50 v10 8
