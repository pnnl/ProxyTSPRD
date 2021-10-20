#!/bin/sh
#SBATCH --exclusive

module purge
module load python/miniconda3.9
source /share/apps/python/miniconda3.9/etc/profile.d/conda.sh
module load cuda/11.0

conda activate onnx

export TMPDIR=/scratch/

if [ -d "/share/apps/cuda/11.0/extras/CUPTI/lib64/" ] && [[ ":$LD_LIBRARY_PATH:" != *":/share/apps/cuda/11.0/extras/CUPTI/lib64/:"* ]]; then
    LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}/share/apps/cuda/11.0/extras/CUPTI/lib64/"
fi
echo $LD_LIBRARY_PATH

if [ ${9} == 0 ]; then
    nsys profile --kill=none -t cuda,nvtx,osrt,cudnn,cublas -o ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/nsys/qdrep_report_${1}_${2}_${3}_ng${4}_e${5}_b${6}_mp${7}_mgpu${8} -w true --force-overwrite=true python app.py --config_file ${1} --framework ${2} --machine_name ${3} --n_gpus ${4} --n_epochs ${5} --batch_size ${6} --mixed_precision ${7} --mgpu_strategy ${8}
else
    python app.py --config_file ${1} --framework ${2} --machine_name ${3} --n_gpus ${4} --n_epochs ${5} --batch_size ${6} --mixed_precision ${7} --mgpu_strategy ${8}
fi