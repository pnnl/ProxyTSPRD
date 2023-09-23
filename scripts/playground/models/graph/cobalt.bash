#!/bin/bash -l
#COBALT -t 00:30:00
#COBALT -n 2
#COBALT -A GRACE
#COBALT -q full-node
#COBALT --attrs filesystems=home,eagle
#COBALT --jobname dist-dgl
#COBALT -o cobalt.out
#COBALT -e cobalt.err

# this script is for 2 nodes and 8 gpus each
module load conda/2023-01-11
. /lus/theta-fs0/software/thetagpu/conda/2023-01-11/mconda3/setup.sh
conda activate ptnightly

GRAPH_NODES=68
NUM_NODES=$(sort $COBALT_NODEFILE | uniq | wc -l)
GPUS_PER_NODE=8
TOTAL_GPUS=$((NUM_NODES * GPUS_PER_NODE))

PROJ_PATH="${PWD}"
PARTITION_DIR="${PWD}/partition/"
PFILENAME="m_graph"
PARTITION_FILE="${PARTITION_DIR}${PFILENAME}.json"
SAMPLER_PROCESSES=1

PYTHON_PATH="$CONDA_PREFIX/bin/python"
IP_CONFIG_FILE="ip_config.txt"

echo "Generating ip_config.txt..."
: > $IP_CONFIG_FILE  # Empty the file if it exists

# Loop over each hostname in the node file
while IFS= read -r hostname
do
  # Use getent to find the IP address and append it to the ip_config.txt file
  getent hosts "$hostname" | awk '{ print $1 }' >> $IP_CONFIG_FILE
done < "$COBALT_NODEFILE"

# Delete the line with 127.0.1.1
sed -i '/^127\.0\.1\.1/d' $IP_CONFIG_FILE

$PYTHON_PATH $PROJ_PATH/partition.py \
--n_nodes $GRAPH_NODES \
--n_partitions $NUM_NODES \
--partition_dir $PARTITION_DIR \
--graph_name $PFILENAME 

$PYTHON_PATH $PROJ_PATH/launch_torchrun.py \
--workspace $PROJ_PATH \
--num_trainers $GPUS_PER_NODE \
--num_samplers $SAMPLER_PROCESSES \
--num_servers 1 \
--part_config $PARTITION_FILE \
--ip_config  $IP_CONFIG_FILE \
"$PYTHON_PATH toy_dist_dgl.py --run_device=theta --ip_config=$IP_CONFIG_FILE --graph_name=$PFILENAME --part_config $PARTITION_FILE"