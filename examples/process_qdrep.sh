#!/bin/bash

#SBATCH -A pacer
#SBATCH -t 06:00:00
#SBATCH --gres=gpu:0
#SBATCH -J process_qdrep
#SBATCH -p dl_shared

module load cuda/11.0

i=0
for file in /people/jain432/pacer/logs/ProxyTSPRD_IPDPS/scenarios_30/float64/R10/nsys/*.qdrep
do
    i=$(( i + 1 ))
    name=${file##*/}
    echo "$file"
    if [ "$i" -gt 17 ]; then
        #echo "helloooooooooooooooo"
        #echo ""
        nsys stats -f csv -o . --force-overwrite $file
    fi
done
