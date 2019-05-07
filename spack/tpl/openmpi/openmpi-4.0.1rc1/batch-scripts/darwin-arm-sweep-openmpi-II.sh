#!/bin/bash -l

# # darwin ARM login
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=10:00:00
#SBATCH --partition=arm
#SBATCH --output=darwin-arm-batch.out
#SBATCH --job-name=openmpi

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl="openmpi"
export versions="4.0.0 4.0.1rc1"
export compilers=""
export compilers="${compilers} arm@19.1"
export compilers="${compilers} clang@18.4.2  clang@18.4.1  clang@18.4.0  clang@7.0.0"
export compilers="${compilers} gcc@8.2.0  gcc@8.1.0  gcc@7.1.0"
# export compilers="${compilers} intel@18.0.3  intel@17.0.6  intel@16.0.4"

# locate, activate Spack
cd /scratch/users/dantopa/new-spack/pr.openmpi.spack
. share/spack/setup-env.sh

# load compilers
cd etc/spack/defaults/
cp darwin-arm-compilers.yaml compilers.yaml

export klingons=" ^libpciaccess/6a4he35"
export dir="/scratch/users/dantopa/repos/gitlab/pull-requests/spack/tpl/openmpi/openmpi-4.0.1rc1/batch-scripts"
source "${dir}/sweep-openmpi.sh"

# sbatch "${dir}/darwin-arm-sweep-openmpi.sh"
