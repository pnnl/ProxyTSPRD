echo "Generating ip_config.txt..."
: > $IP_CONFIG_FILE  # Empty the file if it exists

# Use srun to get the unique hostnames assigned to this job
for hostname in $(srun hostname | sort -u)
do
  # Use getent to find the IP address and append it to the ip_config.txt file
  getent hosts "$hostname" | awk '{ print $1 }' | grep '^10\.' >> $IP_CONFIG_FILE
done

# Delete the line with 127.0.1.1
sed -i '/^127\.0\.1\.1/d' $IP_CONFIG_FILE