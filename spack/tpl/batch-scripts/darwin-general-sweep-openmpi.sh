#!/bin/bash -l

# # Darwin compute node
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=10:00:00
#SBATCH --partition=general
#SBATCH --output=batch.out
#SBATCH --job-name=ompi

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl="openmpi"
export versions="4.0.0 4.0.1rc1"
export compilers="gcc@8.2.0  gcc@7.3.0  gcc@6.4.0  gcc@5.5.0  gcc@4.9.3  gcc@4.8.5"
export compilers="${compilers} intel@18.0.3  intel@17.0.6  intel@16.0.4"
export compilers="${compilers} pgi@18.10  pgi@18.7  pgi@17.10"

# locate, activate Spack
cd /scratch/users/dantopa/new-spack/pr.openmpi.spack
. share/spack/setup-env.sh

# load compilers
cd etc/spack/defaults/
cp darwin-general-compilers.yaml compilers.yaml

export arch=$(spack arch)

spack clean --all

for c in ${compilers}; do
    for v in ${versions}; do
        echo ""
        echo "spack install ${tpl} @ ${v} % ${c} arch=${arch}"
              spack install ${tpl} @ ${v} % ${c} arch=${arch}

              spack clean --all
            done
done

date
