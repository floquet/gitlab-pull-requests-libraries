#!/bin/bash -l

# # darwin ARM login
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=5:00:00
#SBATCH --partition=arm
#SBATCH --output=batch.out
#SBATCH --job-name=openmpi

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl="openmpi"
export versions="4.0.0 4.0.1rc1"
export compilers="pgi@18.10  pgi@18.7  pgi@18.4  pgi@18.3"

cd /scratch/users/dantopa/new-spack/pr.openmpi.spack
. share/spack/setup-env.sh

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
