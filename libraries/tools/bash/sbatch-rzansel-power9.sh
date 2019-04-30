#!/bin/bash -l

# # iteractive batch

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl=${1}
export hpc="rzansel"
export partition="power9"

# insurance
export klingons="";

echo "source ${HOME}/libraries-${hpc}.sh"
      source ${HOME}/libraries-${hpc}.sh

export   dir_tools="${dir_pull_libraries}/tools"
export dir_results="${dir_pull_libraries}/results"

# run master script
echo 'source "${dir_tools}/bash/master-tpl-sweep.sh"'
      source "${dir_tools}/bash/master-tpl-sweep.sh"
