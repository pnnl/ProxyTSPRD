#!/bin/sh
#SBATCH -A pacer
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -p dl
#SBATCH --gres=gpu:1
#SBATCH -J deepDMD
#SBATCH -o logs/out_srun.txt
#SBATCH -e logs/err_srun.txt

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.1
nvcc --version

conda activate pacer_ml_grid
echo $CONDA_PREFIX

export TMPDIR=/scratch/
nsys profile -t cuda --force-overwrite true -o v1_test_file python ./TimeSeriesPrediction.py 1

