#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export   dir_spack="/scratch/users/dantopa/new-spack/pr-openmpi.spack"
export dir_scripts="/scratch/users/dantopa/repos/gitlab/pull-requests/spack/tpl/openmpi/openmpi-3.1.4rc1/scripts"

sbatch batch-darwin-arm.sh
