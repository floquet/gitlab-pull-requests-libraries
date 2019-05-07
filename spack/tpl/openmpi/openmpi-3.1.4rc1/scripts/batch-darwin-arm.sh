#!/bin/bash -l

# # darwin ARM login
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=10:00:00
#SBATCH --partition=arm
#SBATCH --output=darwin-arm-batch.out
#SBATCH --job-name=open-mpi

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export   dir_spack="/scratch/users/dantopa/new-spack/pr-openmpi.spack"
export dir_scripts="/scratch/users/dantopa/repos/gitlab/pull-requests/spack/tpl/openmpi/openmpi-3.1.4rc1/scripts"

cd ${dir_spack}
. share/spack/setup-env.sh

spack clean -a
spack install openmpi @ 3.1.4rc1 % gcc @ 4.8.5
spack install openmpi @ 3.0.4rc1 % gcc @ 4.8.5

sbatch ${dir_scripts}/batch-darwin-general.sh
