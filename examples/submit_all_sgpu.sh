GPUS=( "a100" "tonga" ) # which gpu
FRAMEWORK=( "TF" "PT" )
PROF=( 0 ) # with and without profiler
MP=( 0 1 ) # with or without mixed precision

## For single GPU
for gpu in ${GPUS[@]}; do
    for f in ${FRAMEWORK[@]}; do
        for p in ${PROF[@]}; do
            for mp in ${MP[@]}; do
                echo -n "GPU: $gpu Framework: $f Profiler: $p MP: $mp"
                echo ""
                sh run_sbatch.sh "lstm" $f $gpu 1 1 20 2048 $mp "None" $p   
            done
        done
    done
done