MODELS=( "gridcnnpt" ) # "climatecnnpt" "climatelstmpt" "gridcnnpt" "gridlstmpt"
N_NODES=( 1 2 4 8 )

for model in ${MODELS[@]}; do
    for n_rdus in ${N_NODES[@]}; do
        bash run.sh $model $n_rdus 512 20 > log_${model}_${n_rdus}
    done
done
    
