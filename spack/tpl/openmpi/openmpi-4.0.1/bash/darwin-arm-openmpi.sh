#!/bin/bash -l

# # darwin ARM login
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=10:00:00
#SBATCH --partition=arm
#SBATCH --output=/scratch/users/dantopa/repos/gitlab/pull-requests/spack/tpl/openmpi/openmpi-4.0.1/bash/output/darwin-arm-batch.out
#SBATCH --job-name=openmpi

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export      tpl="openmpi@4.0.1"
export compiler="gcc@4.8.5"
export      dir="/scratch/users/dantopa/new-spack/pr-openmpi-4.0.1.spack"

# locate, activate Spack
cd ${dir}
. share/spack/setup-env.sh

# load compilers
cd etc/spack/defaults/
cp /scratch/users/dantopa/repos/github/yaml-library/compilers.yaml/darwin/darwin-system-compilers.yaml compilers.yaml

spack clean -a
export arch=$(spack arch)

echo "spack install ${tpl} % ${compiler} arch=${arch}"
      spack install ${tpl} % ${compiler} arch=${arch}

lscpu

show_names

uname -a

sbatch /scratch/users/dantopa/repos/gitlab/pull-requests/spack/tpl/openmpi/openmpi-4.0.1/bash/darwin-general-openmpi.sh
