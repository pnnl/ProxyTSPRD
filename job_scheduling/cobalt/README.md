# Submit Job

### SSH to thetagpu: the available options are: `thetagpusn1` and `thetagpusn2`
`ssh thetagpusn1`

### Make sure that you make `qsub` file is executable
`qsub test_pytorch.qsub`

### If instead of adding parameters to the job script, need to mention parameters explicitly in the command.

`qsub -n 1 -q bigmem -A grace -t 1:00:00 test_pytorch.sh`

# Check Job Status
`qstat -u <username>`

# Delete Job
`qdel <jobid>`

# Interactive Shell
Use `n` to control number of GPUs/Nodes

`qsub -n 1 -q single-gpu -A grace -I -t 01:00:00` (Single GPU)

`qsub -n 1 -q full-node -A grace -I -t 01:00:00` (Single Node)
