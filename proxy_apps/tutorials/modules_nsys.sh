#!/bin/sh
#SBATCH -A pacer
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH -p dl
#SBATCH --gres=gpu:1
#SBATCH -J deepDMD_10
#SBATCH -o logs/out_srun10.txt
#SBATCH -e logs/err_srun10.txt

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.0

conda activate pacer_ml_grid

export TMPDIR=/scratch/
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_act_10 python ./TimeSeriesPrediction.py 10
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u1_10 python ./TimeSeriesPrediction_withTFData.py 10
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u2_10 python ./TimeSeriesPrediction_withTFDataOpt.py 10
