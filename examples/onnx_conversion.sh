#!/bin/sh
#SBATCH -A pacer
#SBATCH -t 5:00:00
#SBATCH -N 1
#SBATCH -p a100_shared
#SBATCH --gres=gpu:1
#SBATCH -J deepDMD_gen
#SBATCH -o ../../../logs/power_systems/scenarios_30/float64/R10/sbatch/conversion_out.txt
#SBATCH -e ../../../logs/power_systems/scenarios_30/float64/R10/sbatch/conversion_err.txt

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.0

conda activate onnx

if [[ ${1} == "TFDataGen" ]] || [[ ${1} == "TFDataOptMGPU" ]] || [[ ${1} == "TFDataOptMGPUAcc" ]]; then     
    export TF_XLA_FLAGS="--tf_xla_auto_jit=2 --tf_xla_cpu_global_jit"
    export XLA_FLAGS="--xla_gpu_cuda_data_dir=/share/apps/cuda/11.0/"

    echo $TF_XLA_FLAGS
    echo $LD_LIBRARY_PATH
fi

if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
    LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
fi
echo $LD_LIBRARY_PATH

python convert_to_onnx.py --model_name ${1} --platform ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --tensorboard 0 --mixed_precision ${9}