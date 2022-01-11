GPUS=( "tonga" "a100" ) # which gpu
N_GPUS=( 1 2 4 8 )
FRAMEWORK=( "TF" "PT" )
PROF=( 0 1 ) # with and without profiler
MP=( 0 1 ) # with or without mixed precision

## For single GPU
for gpu in ${GPUS[@]}; do
    if [ ${gpu} == "tonga" ]; then
       N_GPUS+=( 16 )
    fi
    for n in ${N_GPUS[@]}; do
        for f in ${FRAMEWORK[@]}; do
            for p in ${PROF[@]}; do
                for mp in ${MP[@]}; do
                    echo -n "GPU: $gpu; N_GPUs: $n; Framework: $f; Profiler: $p; MP: $mp"
                    echo ""
                        sh run_sbatch.sh "lstm" $f $gpu $n 1 20 2048 $mp "HVD" $p 
                done
            done
        done
    done
done

# sh run_sbatch.sh lstm TF a100 2 1 20 2048 0 HVD 1