#!/bin/bash

#SBATCH --nodes=1
#SBATCH --qos=standard
#SBATCH --time=10:00:00

#SBATCH --output=snow-standard-batch.out
#SBATCH --job-name=openmpi

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl="openmpi"
export versions="4.0.0 4.0.1rc1"
export compilers="gcc@7.3.0  gcc@6.4.0  gcc@4.8.5"
export compilers="${compilers} intel@18.0.3  intel@17.0.6"
export compilers="${compilers} pgi@18.7  pgi@16.10"

# locate, activate Spack
cd /scratch/users/dantopa/new-spack/pr.openmpi.spack
. share/spack/setup-env.sh

# load compilers
cd etc/spack/defaults/
!#cp darwin-general-compilers.yaml compilers.yaml

export dir="/net/scratch4/dantopa/repos/gitlab/pull-requests/spack/tpl/openmpi/openmpi-4.0.1rc1/batch-scripts"
source "${dir}/sweep-openmpi.sh"
