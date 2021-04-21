#!/bin/sh
#SBATCH -A pacer
#SBATCH -t 5:00:00
#SBATCH -N 1
#SBATCH -p a100
#SBATCH --gres=gpu:1
#SBATCH -J deepDMD_gen
#SBATCH -o logs/out_srun_gen.txt
#SBATCH -e logs/err_srun_gen.txt

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.0

conda activate pacer_ml_grid

export TMPDIR=/scratch/
python ./TimeSeriesPrediction_Gen.py 50
python ./TimeSeriesPrediction_GenMP.py 50
