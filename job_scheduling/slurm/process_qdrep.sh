#!/bin/bash

#SBATCH -A pacer
#SBATCH -t 48:00:00
#SBATCH --gres=gpu:1
#SBATCH -J process_qdrep_resnet_train
#SBATCH -o oresnet_train.txt
#SBATCH -e eresnet_train.txt
#SBATCH -p a100_shared

module load cuda/11.4

i=0
for file in /qfs/projects/pacer/proxytsprd/output/profiles/theta_profiles/profiles_v3/*.qdrep
do
    i=$(( i + 1 ))
    name=${file##*/}
    echo "$file"
    if [ "$i" -gt 0 ]; then
        #echo "helloooooooooooooooo"
        #echo ""
        nsys stats -f csv -o . --force-overwrite=true $file
    fi
done
