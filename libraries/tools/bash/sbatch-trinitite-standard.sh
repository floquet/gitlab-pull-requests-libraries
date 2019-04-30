#!/bin/bash -l

# # trinitite compute node login
#SBATCH --nodes=1
#SBATCH --qos=standard
#SBATCH --time=10:00:00
#SBATCH --output=trinitite-standard-batch.out
#SBATCH --job-name=sweeper

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl=${1}
export hpc="trinitite"
export partition="standard"

echo "source ${HOME}/libraries-${hpc}.sh"
      source ${HOME}/libraries-${hpc}.sh # dir_pull_libraries, dir_pull_libraries

export   dir_tools="${dir_pull_libraries}/tools"
export dir_results="${dir_pull_libraries}/results"

# insurance
export klingons="";

# run master script
echo 'source "${dir_tools}/bash/master-tpl-sweep.sh"'
      source "${dir_tools}/bash/master-tpl-sweep.sh"
