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

# ulimit -s unlimited

if [ ${2} == "a100" ]; then
    echo "Launching on A100....."
    sbatch -A pacer -t 03:00:00 -N 1 -p ${2} --ntasks-per-node=${3} --gres=gpu:${3} --constraint=nvlink --exclusive -J e_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10} -o ../../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/out_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10}.txt -e ../../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/err_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10}.txt run.sh ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10}
elif [ ${2} == "a100_shared" ]; then
    echo "Launching on A100 (shared)....."
    sbatch -A pacer -t 03:00:00 -N 1 -p ${2} --ntasks-per-node=${3} --gres=gpu:${3} --constraint=nvlink -J e_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10} -o ../../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/out_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10}.txt -e ../../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/err_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10}.txt run.sh ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10}
elif [ ${2} == "tonga" ]; then
    echo "Launching on Tonga....."
     # --exclusive
    sbatch -A pacer -t 03:00:00 -N 1 -p ${2} --ntasks-per-node=${3} --exclusive --gres=gpu:${3} -J e_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10} -o ../../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/out_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10}.txt -e ../../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/err_${1}_${2}_ng${3}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10}.txt run.sh ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10}
fi