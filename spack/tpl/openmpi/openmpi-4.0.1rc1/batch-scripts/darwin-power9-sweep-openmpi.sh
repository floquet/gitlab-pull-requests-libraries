#!/bin/bash -l

# # Darwin ARM login
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=10:00:00
#SBATCH --partition=power9
#SBATCH --output=darwin-power9-batch.out
#SBATCH --job-name=openmpi

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl="openmpi"
export versions="4.0.0 4.0.1rc1"
export compilers="gcc@8.2.0  gcc@7.3.0  gcc@6.4.0  gcc@4.8.5"
export compilers="${compilers} pgi@18.10  pgi@18.7  pgi@17.10  pgi@16.10"
export compilers="${compilers} xl@16.1.1  xl@16.1.0"

# locate, activate Spack
cd /scratch/users/dantopa/new-spack/pr.openmpi.spack
. share/spack/setup-env.sh

# load compilers
cd etc/spack/defaults/
cp darwin-power9-compilers.yaml compilers.yaml

export dir="/scratch/users/dantopa/repos/gitlab/pull-requests/spack/tpl/openmpi/openmpi-4.0.1rc1/batch-scripts"
source "${dir}/sweep-openmpi.sh"

sbatch "${dir}/darwin-general-sweep-openmpi.sh"

