qsub -n ${2} -t 0:20:00 -A GRACE \
-q full-node \
--attrs filesystems=home \
-o ./logs_profiler/${3}_${1}_${2}_${4}_out \
-e ./logs_profiler/${3}_${1}_${2}_${4}_err \
ddp_job.qsub ${1} ${3} ${4}