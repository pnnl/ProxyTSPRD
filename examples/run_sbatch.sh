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

ulimit -s unlimited

if [ ${3} == "a100" ]; then
    echo "Launching on A100....."
    sbatch -A pacer -t 01:00:00 -N 1 -p ${3} --ntasks-per-node=${4} --gres=gpu:${4} --constraint=nvlink --exclusive -J e_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10} -o ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/out_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10}.txt -e ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/err_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10}.txt run.sh ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10}
elif [ ${3} == "a100_shared" ]; then
    echo "Launching on A100 (shared)....."
    sbatch -A pacer -t 01:00:00 -N 1 -p ${3} --ntasks-per-node=${4} --gres=gpu:${4} --constraint=nvlink -J e_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10} -o ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/out_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10}.txt -e ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/err_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10}.txt run.sh ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10}
elif [ ${3} == "tonga" ]; then
    echo "Launching on Tonga....."
     # --exclusive
    sbatch -A pacer -t 01:00:00 -N 1 -p ${3} --ntasks-per-node=${4} --gres=gpu:${4} --exclusive -J e_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10} -o ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/out_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10}.txt -e ../../../logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/sbatch/err_${1}_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_mp${8}_mgpu${9}_prof${10}.txt run.sh ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10}
fi