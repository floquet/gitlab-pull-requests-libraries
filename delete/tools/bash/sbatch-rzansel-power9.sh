#!/bin/bash -l

# # iteractive batch

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl=${1}
export hpc="rzansel"
export partition="power9"

# input and output directories
export    dir_pull="/usr/workspace/wsrzc/topa1/repos/Github/gitlab-pull-requests-libraries"
export   dir_tools="${dir_pull}/tools"
export dir_results="${dir_pull}/results"

export klingons="";

# run master script
echo 'source "${dir_tools}/bash/master-tpl-sweep.sh"'
      source "${dir_tools}/bash/master-tpl-sweep.sh"
