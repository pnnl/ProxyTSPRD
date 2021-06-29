#!/bin/sh
module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.0

conda activate pacer_tf2_4

export TMPDIR=/scratch/

export TF_XLA_FLAGS="--tf_xla_auto_jit=2 --tf_xla_cpu_global_jit"
echo $TF_XLA_FLAGS
export XLA_FLAGS="--xla_gpu_cuda_data_dir=/share/apps/cuda/11.0/"
echo $LD_LIBRARY_PATH
if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
    LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
fi
echo $LD_LIBRARY_PATH

nsys profile --kill=none -t cuda,nvtx -o ../../../logs/power_systems/scenarios_30/float64/R1/nsys/qdrep_report_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_${1} -w true --force-overwrite=true python run_linux_interface.py --model_name ${1} --platform ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7}