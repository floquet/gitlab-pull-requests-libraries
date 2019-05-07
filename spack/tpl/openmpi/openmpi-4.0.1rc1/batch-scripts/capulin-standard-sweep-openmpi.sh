#!/bin/bash -l

# # darwin ARM login
#SBATCH --nodes=1
#SBATCH --qos=standard
#SBATCH --time=10:00:00
#SBATCH --output=capulin-standard-batch.out
#SBATCH --job-name=openmpi

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl="openmpi"
export versions="4.0.0 4.0.1rc1"
export compilers="gcc@8.2.0  gcc@8.1.0  gcc@7.3.0  gcc@6.1.0  gcc@4.8.5"
export compilers="${compilers} cce@9.0.0.27896  cce@9.0.0.21672  cce@9.0.0.21672  cce@8.7.8"
# $ spack install openmpi@4.0.1rc1 % gcc@6.1.0 ^zlib/qd2bcw6 ^libpciaccess/kjzalvs ^hwloc/fyyzqam

# locate, activate Spack
export dir="/lustre/cpscratch1/dantopa/repos/github/spack-develop-2019-03-13"
cd ${dir}
. share/spack/setup-env.sh

source "${dir}/scripts/sweep-openmpi.sh"
