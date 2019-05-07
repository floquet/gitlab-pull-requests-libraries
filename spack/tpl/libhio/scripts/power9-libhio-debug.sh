#!/bin/bash -l

# # darwin Power9 login
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=10:00:00
#SBATCH --partition=power9
#SBATCH --output=power9-batch.out
#SBATCH --job-name=libhio

printf '%s\n' "$(date) ${BASH_SOURCE[0]}" # who I am

cd /scratch/users/dantopa/new-spack/strawman.pr.libhio
. share/spack/setup-env.sh

export compilers="gcc@6.4.0 gcc@7.3.0 gcc@8.2.0 pgi@17.10 pgi@18.10 xl@16.1.0 xl@16.1.1"
export tpl="libhio@1.4.1.3"

spack clean -a

for c in ${compilers}; do
    echo ""
    echo "spack install ${tpl} % ${c}"
          spack install ${tpl} % ${c}
          spack clean -a
done
