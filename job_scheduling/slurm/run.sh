#!/bin/sh

module purge
module load python/miniconda3.9
source /share/apps/python/miniconda3.9/etc/profile.d/conda.sh

export TEMP=/qfs/projects/pacer/milan/scratch/temp/
export TMP=/qfs/projects/pacer/milan/scratch/tmp/
export TEMPDIR=/qfs/projects/pacer/milan/scratch/tempdir/
export TMPDIR=/qfs/projects/pacer/milan/scratch/tmpdir/

module load gcc/9.1.0 
module load cuda/11.0
ulimit -u 16000

echo "Job Configuration File: ${1}"
echo "Partition: ${2}"
echo "Number of GPUs: ${3}"
echo "Number of CPUs: ${4}"
echo "Number of Epochs: ${5}"
echo "Batch Size: ${6}"
echo "Mixed Precision: ${7}"
echo "Multi-GPU Strategy: ${8}"
echo "Profiling: ${9}"
echo "Run Type: ${10}"

if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
    LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
fi
echo $LD_LIBRARY_PATH

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

conda activate horovod

if [ ${9} == 1 ]; then
    if [ ${8} == "HVD" ]; then
        module load openmpi/4.1.0
        export HOROVOD_GPU_OPERATIONS="NCCL"
        export HOROVOD_NCCL_INCLUDE="~/.conda/envs/horovod/include/"
        export HOROVOD_NCCL_LIB="~/.conda/envs/horovod/lib/"
        
        echo "--------- Running with Horovod (with Profiler) -------------------"
        # mpirun -n ${4} --bind-to none -map-by slot -x NCCL_DEBUG=INFO -x LD_LIBRARY_PATH 
        horovodrun -np ${3} nsys profile --kill=none -t cuda,osrt,cudnn,cublas -o ../../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/nsys/qdrep_report_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10}_%p -w true --force-overwrite=true python ../../scripts/test/test_gpu.py --config_file ../../scripts/configs/config_${1}.json --platform "gpu" --machine_name ${2} --n_gpus ${3} --n_cpus ${4} --n_epochs ${5} --batch_size ${6} --dtype ${7} --mgpu_strategy ${8} --profiling ${9} --run_type ${10} 
    else
        echo "--------- Running without Horovod (with Profiler) -------------------"
        nsys profile --kill=none -t cuda,osrt,cudnn,cublas -o ../../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/nsys/qdrep_report_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10} -w true --force-overwrite=true python ../../scripts/test/test_gpu.py --config_file ../../scripts/configs/config_${1}.json --machine_name --platform "gpu" ${2} --n_gpus ${3} --n_cpus ${4} --n_epochs ${5} --batch_size ${6} --dtype ${7} --mgpu_strategy ${8} --profiling ${9} --run_type ${10} 
    fi
else
    if [ ${8} == "HVD" ]; then
        module load openmpi/4.1.0
        export HOROVOD_GPU_OPERATIONS="NCCL"
        export HOROVOD_NCCL_INCLUDE="~/.conda/envs/horovod/include/"
        export HOROVOD_NCCL_LIB="~/.conda/envs/horovod/lib/"
        
        echo "--------- Running with Horovod -------------------"
        # horovodrun -np ${4} python app.py --config_file ${1} --framework ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --mixed_precision ${8} --mgpu_strategy ${9}
        # mpirun --bind-to none -n ${4} -map-by slot -x NCCL_DEBUG=INFO -x LD_LIBRARY_PATH 
        horovodrun -np ${3} python ../../scripts/test/test_gpu.py --config_file ../../scripts/configs/config_${1}.json --platform "gpu" --machine_name ${2} --n_gpus ${3} --n_cpus ${4} --n_epochs ${5} --batch_size ${6} --dtype ${7} --mgpu_strategy ${8} --profiling ${9} --run_type ${10} 
    else
        echo "--------- Running without Horovod -------------------"
        python ../../scripts/test/test_gpu.py --config_file ../../scripts/configs/config_${1}.json --platform "gpu" --machine_name ${2} --n_gpus ${3} --n_cpus ${4} --n_epochs ${5} --batch_size ${6} --dtype ${7} --mgpu_strategy ${8} --profiling ${9} --run_type ${10}
    fi
fi