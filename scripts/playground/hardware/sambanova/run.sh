python ./test_sambanova.py --config_file ../../configs/samba/${1}_samba.json --run_type compile --batch_size ${3} --n_rdus ${2} --n_epochs ${4}

if [[ ${2} -gt 1 ]]
then
  /opt/mpich-3.4.3/bin/mpirun -np ${2} python ./test_sambanova.py --config_file ../../configs/samba/${1}_samba.json --run_type run --batch_size ${3} --n_epochs ${4} --n_rdus ${2}
else
    python ./test_sambanova.py --config_file ../../configs/samba/${1}_samba.json --run_type run --batch_size ${3} --n_epochs ${4} --n_rdus ${2}
fi

