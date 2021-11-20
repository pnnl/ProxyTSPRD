#!/bin/sh

module purge
module load python/miniconda3.9
source /share/apps/python/miniconda3.9/etc/profile.d/conda.sh

export TMPDIR=/scratch/

if [ ${10} == 1 ]; then
    if [ ${9} == "HVD" ]; then
        module load gcc/5.2.0 
        module load openmpi/4.1.0
        export HOROVOD_GPU_OPERATIONS="NCCL"
        export HOROVOD_NCCL_INCLUDE="~/.conda/envs/horovod/include/"
        export HOROVOD_NCCL_LIB="~/.conda/envs/horovod/lib/"
        # export HOROVOD_LOG_LEVEL=TRACE
        
        echo "--------- Running with Horovod (with Profiler) -------------------"
        echo "Job Configuration File: ${1}"
        echo "Framework: ${2}"
        echo "Partition: ${3}"
        echo "Number of GPUs: ${4}"
        echo "Number of CPUs: ${5}"
        echo "Number of Epochs: ${6}"
        echo "Batch Size: ${7}"
        echo "Mixed Precision: ${8}"
        echo "Multi-GPU Strategy: ${9}"
        echo "Profiling: ${10}"

        module load cuda/11.0
        ulimit -u 16000
        if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
            LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
        fi
        echo $LD_LIBRARY_PATH
        conda activate horovod
        
        i=0
        fs=''
        while [ $i -lt `expr ${4} - 1` ] 
        do
            fs=$fs$i,
            i=`expr $i + 1`
        done
        fs=$fs$i
        export CUDA_VISIBLE_DEVICES=$fs
        echo $CUDA_VISIBLE_DEVICES

        # mpirun -n ${4} --bind-to none -map-by slot -x NCCL_DEBUG=INFO -x LD_LIBRARY_PATH 
        horovodrun -np ${4} nsys profile --kill=none -t cuda,osrt,cudnn,cublas -o ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/nsys/qdrep_report_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10}_%p -w true --force-overwrite=true python app.py --config_file ${1} --framework ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --mixed_precision ${8} --mgpu_strategy ${9} --profiling ${10} 
    else
        echo "--------- Running without Horovod (with Profiler) -------------------"
        echo "Job Configuration File: ${1}"
        echo "Framework: ${2}"
        echo "Partition: ${3}"
        echo "Number of GPUs: ${4}"
        echo "Number of CPUs: ${5}"
        echo "Number of Epochs: ${6}"
        echo "Batch Size: ${7}"
        echo "Mixed Precision: ${8}"
        echo "Multi-GPU Strategy: ${9}"
        echo "Profiling: ${10}"

        module load cuda/11.0
        ulimit -u 16000
        if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
            LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
        fi
        echo $LD_LIBRARY_PATH
        conda activate horovod
        
        i=0
        fs=''
        while [ $i -lt `expr ${4} - 1` ] 
        do
            fs=$fs$i,
            i=`expr $i + 1`
        done
        fs=$fs$i
        export CUDA_VISIBLE_DEVICES=$fs
        echo $CUDA_VISIBLE_DEVICES

        nsys profile --kill=none -t cuda,osrt,cudnn,cublas -o ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/nsys/qdrep_report_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10} -w true --force-overwrite=true python app.py --config_file ${1} --config_file ${1} --framework ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --mixed_precision ${8} --mgpu_strategy ${9} --profiling ${10} 
    fi
else
    if [ ${9} == "HVD" ]; then
        module load gcc/5.2.0 
        module load openmpi/4.1.0
        export HOROVOD_GPU_OPERATIONS="NCCL"
        export HOROVOD_NCCL_INCLUDE="~/.conda/envs/horovod/include/"
        export HOROVOD_NCCL_LIB="~/.conda/envs/horovod/lib/"
        # export HOROVOD_LOG_LEVEL=TRACE
        

        echo "--------- Running with Horovod -------------------"
        echo "Job Configuration File: ${1}"
        echo "Framework: ${2}"
        echo "Partition: ${3}"
        echo "Number of GPUs: ${4}"
        echo "Number of CPUs: ${5}"
        echo "Number of Epochs: ${6}"
        echo "Batch Size: ${7}"
        echo "Mixed Precision: ${8}"
        echo "Multi-GPU Strategy: ${9}"
        echo "Profiling: ${10}"

        module load cuda/11.0
        ulimit -u 16000
        if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
            LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
        fi
        echo $LD_LIBRARY_PATH
        conda activate horovod
        
        i=0
        fs=''
        while [ $i -lt `expr ${4} - 1` ] 
        do
            fs=$fs$i,
            i=`expr $i + 1`
        done
        fs=$fs$i
        export CUDA_VISIBLE_DEVICES=$fs
        echo $CUDA_VISIBLE_DEVICES

        # horovodrun -np ${4} python app.py --config_file ${1} --framework ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --mixed_precision ${8} --mgpu_strategy ${9}
        # mpirun --bind-to none -n ${4} -map-by slot -x NCCL_DEBUG=INFO -x LD_LIBRARY_PATH 
        horovodrun -np ${4} python app.py --config_file ${1} --framework ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --mixed_precision ${8} --mgpu_strategy ${9} --profiling ${10} 
    else
        echo "--------- Running without Horovod -------------------"
        echo "Job Configuration File: ${1}"
        echo "Framework: ${2}"
        echo "Partition: ${3}"
        echo "Number of GPUs: ${4}"
        echo "Number of CPUs: ${5}"
        echo "Number of Epochs: ${6}"
        echo "Batch Size: ${7}"
        echo "Mixed Precision: ${8}"
        echo "Multi-GPU Strategy: ${9}"
        echo "Profiling: ${10}"

        module load cuda/11.0
        ulimit -u 16000
        if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
            LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
        fi
        echo $LD_LIBRARY_PATH
        conda activate horovod
        
        i=0
        fs=''
        while [ $i -lt `expr ${4} - 1` ] 
        do
            fs=$fs$i,
            i=`expr $i + 1`
        done
        fs=$fs$i
        export CUDA_VISIBLE_DEVICES=$fs
        echo $CUDA_VISIBLE_DEVICES

        python app.py --config_file ${1} --framework ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --mixed_precision ${8} --mgpu_strategy ${9} --profiling ${10} 
    fi
fi