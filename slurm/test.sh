#!/bin/bash
#SBATCH -A pacer
#SBATCH -t 01:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=2
#SBATCH -p a100_shared
#SBATCH --gres=gpu:2
#SBATCH -J horovod
#SBATCH -o logs/out.txt
#SBATCH -e logs/err.txt

module purge
module load python/miniconda3.9
source /share/apps/python/miniconda3.9/etc/profile.d/conda.sh
module load gcc/5.2.0
module load openmpi/4.1.1
export HOROVOD_GPU_OPERATIONS="NCCL"
export HOROVOD_NCCL_INCLUDE="~/.conda/envs/horovod/include/"
export HOROVOD_NCCL_LIB="~/.conda/envs/horovod/lib/"

module load cuda/11.0
ulimit -u 16000

if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
    LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
fi
echo $LD_LIBRARY_PATH
conda activate horovod

echo ${1}
if [[ ${1} == "horovod" ]]; then     
    horovodrun -np 8 python test_horovod.py --framework ${2} --mgpu_strategy ${3}
elif [[ ${1} == "hvd" ]]; then
    horovodrun -np 8 python test_hvd.py --framework ${2}
elif [[ ${1} == "tfhorovod" ]]; then     
    # mpirun --bind-to none -n 8 -map-by slot -x NCCL_DEBUG=INFO -x LD_LIBRARY_PATH  
    # horovodrun -np 8 nsys profile --kill=none -t cuda,osrt,cudnn,cublas -o logs/test_qdrep_report_%p -w true --force-overwrite=true python test_tfhorovod.py --framework ${2}
    horovodrun -np 8 python test_tfhorovod.py --framework ${2}
elif [[ ${1} == "data_pipeline" ]]; then
    horovodrun -np 8 python test_data_pipeline.py
elif [[ ${1} == "gpu" ]]; then
    horovodrun -np 2 python -u test_gpu.py --config_file "./configs/config_lstm.json" --platform "gpu" "--machine_name" "tonga" --n_gpus 2 --n_cpus 1 --n_epochs 1 --batch_size 10
fi
# srun --nodes=1 --ntasks=1 python test_horovod.py
# python test_horovod.py