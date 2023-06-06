#!/bin/bash -l

if [ "${11}" = "full-node" ]; then
    RANKS_PER_NODE=8
else
    RANKS_PER_NODE=1
fi
let N_RANKS=${RANKS_PER_NODE}*${3}

echo "Job Configuration File: ${1}"
echo "Partition: ${2}"
echo "Number of GPUs: ${N_RANKS}"
echo "Number of CPUs: ${4}"
echo "Number of Epochs: ${5}"
echo "Batch Size: ${6}"
echo "Mixed Precision: ${7}"
echo "Multi-GPU Strategy: ${8}"
echo "Profiling: ${9}"
echo "Run Type: ${10}"
echo "Node: ${11}"
echo "Train Suffix: ${12}"

qsub -n ${3} -t 04:00:00 -A GRACE \
-q ${11} \
-o /home/milanjain91/results/tpdps23/logs/sbatch/o_${1}_${2}_ng${N_RANKS}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10} \
-e /home/milanjain91/results/tpdps23/logs/sbatch/e_${1}_${2}_ng${N_RANKS}_nc${4}_e${5}_b${6}_mp${7}_mgpu${8}_prof${9}_${10} \
submit_job.qsub ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10} ${11} ${12}