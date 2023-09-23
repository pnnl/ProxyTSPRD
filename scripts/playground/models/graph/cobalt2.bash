#!/bin/bash -l
#COBALT -n 2
#COBALT -t 0:20:00 
#COBALT -A GRACE
#COBALT -q full-node
#COBALT --attrs filesystems=home
#COBALT -o cobalt.out
#COBALT -e cobalt.err

#submisstion script for running pytorch_mnist with DDP

echo "Running Cobalt Job $COBALT_JOBID."

module load conda/2023-01-11
conda activate dgl

N_NODES=$(cat $COBALT_NODEFILE | wc -l)
if [ "${11}" = "full-node" ]; then
    RANKS_PER_NODE=8
else
    RANKS_PER_NODE=1
fi
let N_RANKS=${RANKS_PER_NODE}*${N_NODES}
echo "Total #Ranks: ${N_RANKS}"

echo "Current Directory: "
pwd

export TEMP=/tmp/ 
export TMP=/tmp/ 
export TEMPDIR=/tmp/ 
export TMPDIR=/tmp/ 
echo "$LD_LIBRARY_PATH"

mpirun -n 2 -x PATH -x LD_LIBRARY_PATH  python toy_dist_dgl.py --run_device pnnl