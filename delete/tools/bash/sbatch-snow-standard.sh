#!/bin/bash -l

# # snow compute node login
#SBATCH --nodes=1
#SBATCH --qos=standard
#SBATCH --time=10:00:00
#SBATCH --output=snow-standard-batch.out
#SBATCH --job-name=sweeper

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl=${1}
export hpc="snow"
export partition="standard"

# input and output directories
export    dir_pull="/lustre/ttscratch1/dantopa/repos/gitlab/pull-requests/libraries"
export   dir_tools="${dir_pull}/tools"
export dir_results="${dir_pull}/results"

export klingons="";

# run master script
echo 'source "${dir_tools}/bash/master-tpl-sweep.sh"'
      source "${dir_tools}/bash/master-tpl-sweep.sh"
