#!/bin/sh

module purge
module load python/miniconda3.9
source /share/apps/python/miniconda3.9/etc/profile.d/conda.sh

export TMPDIR=/scratch/

if [ ${8} == 0 ]; then
    if [ ${7} == "HVD" ]; then
        module load gcc/5.2.0 
        module load openmpi/4.1.0
        export HOROVOD_GPU_OPERATIONS="NCCL"
        export HOROVOD_NCCL_INCLUDE="~/.conda/envs/horovod/include/"
        export HOROVOD_NCCL_LIB="~/.conda/envs/horovod/lib/"
        
        module load cuda/11.0
        if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
            LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
        fi
        echo $LD_LIBRARY_PATH
        conda activate horovod
        nsys profile --kill=none -t cuda,nvtx,osrt,cudnn,cublas -o ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/nsys/qdrep_report_${1}_${2}_ng${3}_e${4}_b${5}_mp${6}_mgpu${7} -w true --force-overwrite=true horovodrun -np ${4} python app.py --config_file ${1} --machine_name ${2} --n_gpus ${3} --n_epochs ${4} --batch_size ${5} --mixed_precision ${6} --mgpu_strategy ${7}
    else
        module load cuda/11.0
        if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
            LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
        fi
        echo $LD_LIBRARY_PATH
        conda activate onnx
        nsys profile --kill=none -t cuda,nvtx,osrt,cudnn,cublas -o ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/nsys/qdrep_report_${1}_${2}_ng${3}_e${4}_b${5}_mp${6}_mgpu${7} -w true --force-overwrite=true python app.py --config_file ${1} --machine_name ${2} --n_gpus ${3} --n_epochs ${4} --batch_size ${5} --mixed_precision ${6} --mgpu_strategy ${7}
    fi
else
    if [ ${7} == "HVD" ]; then
        module load gcc/5.2.0 
        module load openmpi/4.1.0
        export HOROVOD_GPU_OPERATIONS="NCCL"
        export HOROVOD_NCCL_INCLUDE="~/.conda/envs/horovod/include/"
        export HOROVOD_NCCL_LIB="~/.conda/envs/horovod/lib/"

        echo "Job Configuration File: ${1}"
        echo "Partition: ${2}"
        echo "Number of GPUs: ${3}"
        echo "Number of Epochs: ${4}"
        echo "Batch Size: ${5}"
        echo "Mixed Precision: ${6}"
        echo "Multi-GPU Strategy: ${7}"
        
        module load cuda/11.0
        if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
            LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
        fi
        echo $LD_LIBRARY_PATH
        conda activate horovod
#         i=0
#         fs=''
#         while [ $i -lt `expr ${3} - 1` ] 
#         do
#             fs=$fs$i,
#             i=`expr $i + 1`
#         done
#         fs=$fs$i
#         export CUDA_VISIBLE_DEVICES=$fs
#         echo $CUDA_VISIBLE_DEVICES

        horovodrun -np ${3} python app.py --config_file ${1} --machine_name ${2} --n_gpus ${3} --n_epochs ${4} --batch_size ${5} --mixed_precision ${6} --mgpu_strategy ${7}
    else
        echo "Job Configuration File: ${1}"
        echo "Partition: ${2}"
        echo "Number of GPUs: ${3}"
        echo "Number of Epochs: ${4}"
        echo "Batch Size: ${5}"
        echo "Mixed Precision: ${6}"
        echo "Multi-GPU Strategy: ${7}"
        
        module load cuda/11.0
        if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
            LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
        fi
        echo $LD_LIBRARY_PATH
        conda activate onnx
        
        i=0
        fs=''
        while [ $i -lt `expr ${3} - 1` ] 
        do
            fs=$fs$i,
            i=`expr $i + 1`
        done
        fs=$fs$i
        export CUDA_VISIBLE_DEVICES=$fs
        echo $CUDA_VISIBLE_DEVICES

        python app.py --config_file ${1} --machine_name ${2} --n_gpus ${3} --n_epochs ${4} --batch_size ${5} --mixed_precision ${6} --mgpu_strategy ${7}
    fi
fi