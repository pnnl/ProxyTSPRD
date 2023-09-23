IP_CONFIG_FILE="ip_config.txt"

echo "Generating ip_config.txt..."
: > $IP_CONFIG_FILE  # Empty the file if it exists
while IFS= read -r hostname
do
  # Use getent to find the IP address and append it to the ip_config.txt file
  getent hosts "$hostname" | awk '{ print $1 }' >> $IP_CONFIG_FILE
done < "$COBALT_NODEFILE"

# $PYTHON_PATH launch_torchrun.py --workspace="${PWD}" --num_trainers=8 --num_samplers=1 --num_servers=1 --part_config="${PWD}/partition/m_graph.json" --ip_config="${PWD}/ip_config_test.txt" "$PYTHON_PATH ${PWD}/toy_dist_dgl_mwe.py --ip_config=${PWD}/ip_config_test.txt"