#!/bin/bash -l
#COBALT -t 00:30:00
#COBALT -n 2
#COBALT -A GRACE
#COBALT -q full-node
#COBALT --attrs filesystems=home,eagle
#COBALT --jobname dist-dgl
#COBALT -o dist-dgl.out
#COBALT -e dist-dgl.err

# this script is for 2 nodes and 8 gpus each
module load conda/2023-01-11
conda activate dgl-nightly

echo "Setting Project path..."

DATASET_NAME="obgn-products"
PARTITION_METHOD="metis"
SAMPLER_PROCESSES=1 # you can increase this
SUMMARYFILE="summary.txt"
IP_CONFIG_FILE="ip_config.txt"


NUM_NODES=$(sort $COBALT_NODEFILE | uniq | wc -l)
GPUS_PER_NODE=8
TOTAL_GPUS=$((NUM_NODES * GPUS_PER_NODE))

DATA_DIR="/lus/eagle/projects/GRACE/Distributed_DGL/dataset"
PROJ_PATH="/home/aishwaryyasarkar/Distributed_DGL/src/dgl_ex"
PARTITION_DIR="/lus/eagle/projects/GRACE/Distributed_DGL/partitions/${PARTITION_METHOD}/${DATASET_NAME}/${NUM_NODES}_parts/${DATASET_NAME}.json"
PYTHON_PATH="$CONDA_PREFIX/bin/python"

# write all parameters to summary file
echo "Dataset: $DATASET_NAME" >> $SUMMARYFILE
echo "Partition Method: $PARTITION_METHOD" >> $SUMMARYFILE
echo "Number of Nodes: $NUM_NODES" >> $SUMMARYFILE
echo "Number of Sampler Processes: $SAMPLER_PROCESSES" >> $SUMMARYFILE
echo "Total GPUs: $TOTAL_GPUS" >> $SUMMARYFILE
echo "Total Nodes: $NUM_NODES" >> $SUMMARYFILE
echo "GPUs per Node: $GPUS_PER_NODE" >> $SUMMARYFILE
echo "Data Directory: $DATA_DIR" >> $SUMMARYFILE
echo "Project Path: $PROJ_PATH" >> $SUMMARYFILE
echo "Partition Directory: $PARTITION_DIR" >> $SUMMARYFILE
echo "IP Config File: $IP_CONFIG_FILE" >> $SUMMARYFILE
echo "" >> $SUMMARYFILE

cat $COBALT_NODEFILE

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

$PYTHON_PATH $PROJ_PATH/launch.py \
--workspace $PROJ_PATH \
--num_trainers $GPUS_PER_NODE \
--num_samplers $SAMPLER_PROCESSES \
--num_servers 1 \
--part_config $PARTITION_DIR \
--ip_config  $IP_CONFIG_FILE \
"$PYTHON_PATH node_classification.py --graph_name $DATASET_NAME \
--backend nccl \
--ip_config $IP_CONFIG_FILE --num_epochs 100 --batch_size 2000 --num_gpus $GPUS_PER_NODE --summary_filepath $SUMMARYFILE"