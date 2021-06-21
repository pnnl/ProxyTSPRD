#!/bin/sh
#SBATCH -A pacer
#SBATCH -t 5:00:00
#SBATCH -N 1
#SBATCH -p a100_shared
#SBATCH --gres=gpu:1
#SBATCH -J e50_deepDMD_tfdataopt
#SBATCH -o logs/v10/out_e50_srun_tfdataopt.txt
#SBATCH -e logs/v10/err_e50_srun_tfdataopt.txt

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.0

conda activate pacer_ml_grid

export TMPDIR=/scratch/
python ./t2_TimeSeriesPrediction_withTFDataOpt.py 50 v10
