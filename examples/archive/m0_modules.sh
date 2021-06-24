#!/bin/sh
#SBATCH -A pacer
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH -p dl
#SBATCH --gres=gpu:1
#SBATCH -J deepDMD
#SBATCH -o logs/out_srun_dec.txt
#SBATCH -e logs/err_srun_dec.txt

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.1

conda activate pacer_ml_grid

export TMPDIR=/scratch/
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_act_50 python ./TimeSeriesPrediction.py 50
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_act_100 python ./TimeSeriesPrediction.py 100
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_act_150 python ./TimeSeriesPrediction.py 150
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_act_200 python ./TimeSeriesPrediction.py 200
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_act_250 python ./TimeSeriesPrediction.py 250
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u1_50 python ./TimeSeriesPrediction_withTFData.py 50
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u1_100 python ./TimeSeriesPrediction_withTFData.py 100
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u1_150 python ./TimeSeriesPrediction_withTFData.py 150
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u1_200 python ./TimeSeriesPrediction_withTFData.py 200
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u1_250 python ./TimeSeriesPrediction_withTFData.py 250
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u2_50 python ./TimeSeriesPrediction_withTFDataOpt.py 50
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u2_100 python ./TimeSeriesPrediction_withTFDataOpt.py 100
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u2_150 python ./TimeSeriesPrediction_withTFDataOpt.py 150
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u2_200 python ./TimeSeriesPrediction_withTFDataOpt.py 200
rm /tmp/nsys*
nsys profile -t cuda,cublas,cudnn --stats=true -o v1_u2_250 python ./TimeSeriesPrediction_withTFDataOpt.py 250
rm /tmp/nsys*
