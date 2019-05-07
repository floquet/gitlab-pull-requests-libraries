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

# input and output directories
export    dir_pull="/scratch/users/dantopa/repos/gitlab/pull-requests/libraries"
export   dir_tools="${dir_pull}/tools"
export dir_results="${dir_pull}/results"

export klingons="";

# run master script
echo 'source "${dir_tools}/bash/master-tpl-sweep.sh"'
      source "${dir_tools}/bash/master-tpl-sweep.sh"
