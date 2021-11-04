#!/bin/sh
#SBATCH --exclusive

module purge
module load python/anaconda3.2019.3
source /share/apps/python/anaconda3.2019.3/etc/profile.d/conda.sh
module load cuda/11.0

conda activate onnx

export TMPDIR=/scratch/

i=0
fs=''
while [ $i -lt `expr ${4} - 1` ] 
do
    fs=$fs$i,
    i=`expr $i + 1`
done
fs=$fs$i
export CUDA_DEVICE_ORDER="PCI_BUS_ID"
export CUDA_VISIBLE_DEVICES=$fs
echo $CUDA_VISIBLE_DEVICES

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

if [ ${8} == 0 ]; then
    nsys profile --kill=none -t cuda,nvtx,osrt,cudnn,cublas -o ../../../logs/power_systems/scenarios_30/float64/R10/nsys/qdrep_report_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_tb${8}_mp${9}_${1} -w true --force-overwrite=true python training_interface.py --model_name ${1} --platform ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --tensorboard ${8} --mixed_precision ${9}
#     nsys profile --stats=true -o ../../../logs/power_systems/scenarios_30/float64/R10/nsys/qdrep_report_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_tb${8}_mp${9}_${1} -w true python training_interface.py --model_name ${1} --platform ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --tensorboard ${8} --mixed_precision ${9}
else
    python training_interface.py --model_name ${1} --platform ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --tensorboard 0 --mixed_precision ${9}
fi