#!/bin/bash

#SBATCH -A pacer
#SBATCH -t 12:00:00
#SBATCH --gres=gpu:0
#SBATCH -J process_qdrep
#SBATCH -p dl_shared

module load cuda/11.0

i=0
for file in /qfs/projects/pacer/milan/profiles/convlstm/*.qdrep
do
    i=$(( i + 1 ))
    name=${file##*/}
    echo "$file"
    if [ "$i" -gt 0 ]; then
        #echo "helloooooooooooooooo"
        #echo ""
        nsys stats -f csv -o . --force-overwrite $file
    fi
done
