#!/bin/bash
#SBATCH -A pacer
#SBATCH -t 4:00:00
#SBATCH -N 1
#SBATCH -p shared
#SBATCH --gres=gpu:1
#SBATCH -J deepDMD_e250
#SBATCH -o logs/out_e250.txt
#SBATCH -e logs/err_e250.txt

source /etc/profile.d/modules.csh

module purge
module load python/anaconda3.2019.3
module load cuda/10.2.89

conda activate pacer_ml_grid
conda init bash

unlimit

echo
echo "loaded modules"
echo
module list >& _modules.lis_
cat _modules.lis_
/bin/rm -f _modules.lis_
echo
echo limits
echo
limit
echo
echo "Environment Variables"
echo
printenv
echo
echo "Model Output"
echo
nvprof python ./TimeSeriesPrediction.py 250
