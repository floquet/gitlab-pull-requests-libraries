#! /bin/bash
printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export           dir_repos="/net/scratch4/dantopa/repos"
export dir_spack_libraries="${dir_repos}/spack/libraries"
export  dir_pull_libraries="${dir_repos}/gitlab/pull-requests/libraries"

export   dir_tools="${dir_pull_libraries}/tools"
export dir_results="${dir_pull_libraries}/results"
