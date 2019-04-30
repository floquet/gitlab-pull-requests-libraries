#!/bin/bash -l

# # Darwin power9 login
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=10:00:00
#SBATCH --partition=power9
#SBATCH --output=darwin-power9-batch.out
#SBATCH --job-name=sweeper

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl=${1}
export hpc="darwin"
export partition="power9"

echo "source ${HOME}/libraries-${hpc}.sh"
      source ${HOME}/libraries-${hpc}.sh

export   dir_tools="${dir_pull_libraries}/tools"
export dir_results="${dir_pull_libraries}/results"

# insurance
export klingons="";

# run master script
echo 'source "${dir_tools}/bash/master-tpl-sweep.sh"'
      source "${dir_tools}/bash/master-tpl-sweep.sh"
