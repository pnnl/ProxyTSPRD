echo "Job Configuration File: ${1}"
echo "Partition: ${2}"
echo "Number of GPUs: ${3}"
echo "Number of Epochs: ${4}"
echo "Batch Size: ${5}"
echo "Mixed Precision: ${6}"
echo "Multi-GPU Strategy: ${7}"

sbatch -A pacer -t 01:00:00 -N 1 -p ${2} --ntasks-per-node=${3} --gres=gpu:${3} --constraint=nvlink --exclusive -J e_${1}_${2}_ng${3}_e${4}_b${5}_mp${6}_mgpu${7} -o ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/out_${1}_${2}_ng${3}_e${4}_b${5}_mp${6}_mgpu${7}.txt -e ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/err_${1}_${2}_ng${3}_e${4}_b${5}_mp${6}_mgpu${7}.txt run.sh ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8}