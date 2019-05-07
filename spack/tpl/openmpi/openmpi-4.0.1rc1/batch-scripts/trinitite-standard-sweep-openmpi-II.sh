#!/bin/bash -l

# # trinitite compute login
#SBATCH --nodes=1
#SBATCH --qos=standard
#SBATCH --time=10:00:00
#SBATCH --output=trinitite-compute-batch.out
#SBATCH --job-name=openmpi

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl="openmpi"
export versions="4.0.0 4.0.1rc1"
export compilers="${compilers} cce@9.0.0.21672  cce@8.7.8  cce@8.7.5  cce@8.6.5"
export compilers="${compilers} intel@18.0.5  intel@17.0.4"

# locate, activate Spack
cd /lustre/ttscratch1/dantopa/spack/pr.openmpi.spack
. share/spack/setup-env.sh

# load compilers
cd etc/spack/defaults/
cp trinitite-compute-compilers.yaml compilers.yaml

export dir="/lustre/ttscratch1/dantopa/repos/gitlab/pull-requests/spack/tpl/openmpi/openmpi-4.0.1rc1/batch-scripts"
source "${dir}/sweep-openmpi-II.sh"
