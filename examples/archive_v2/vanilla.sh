#!/bin/sh
#SBATCH -A pacer
#SBATCH -t 00:20:00
#SBATCH -N 1
#SBATCH -p a100_shared
#SBATCH -c 64
#SBATCH --gres=gpu:8
#SBATCH -J vanilla
#SBATCH -o ../../../logs/power_systems/scenarios_30/vanilla/out.txt
#SBATCH -e ../../../logs/power_systems/scenarios_30/vanilla/err.txt

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.0

conda activate pacer_tf2_4

export TMPDIR=/scratch/
export TF_XLA_FLAGS="--tf_xla_auto_jit=2 --tf_xla_cpu_global_jit"
export XLA_FLAGS="--xla_gpu_cuda_data_dir=/share/apps/cuda/11.0/"

if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
    LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
fi
echo $LD_LIBRARY_PATH

python ./vanilla_mgpu.py --model_name ${1} --n_epochs ${2} --batch_size ${3}
