sbatch -A pacer -t 5:00:00 -N 1 --gres=gpu:${4} -c ${5} -p ${3} -J e_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_tb${8}_${1} -o ../../../logs/power_systems/scenarios_30/float64/R5/sbatch/out_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_tb${8}_${1}.txt -e ../../../logs/power_systems/scenarios_30/float64/R5/sbatch/err_${2}_${3}_ng${4}_nc${5}_e${6}_b${7}_tb${8}_${1}.txt run.sh ${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8}