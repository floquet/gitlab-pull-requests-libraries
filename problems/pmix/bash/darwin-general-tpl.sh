#!/bin/bash -l

# # Darwin compute node
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=10:00:00
#SBATCH --partition=general
#SBATCH --output=darwin-general-batch.out
#SBATCH --job-name=pmix

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export      tpl="pmix"
export versions="3.1.2 3.0.2 2.2.2 2.1.4"
export compiler="gcc@4.8.5"
export      dir="/scratch/users/dantopa/new-spack/pmix.general.spack"

# locate, activate Spack
cd ${dir}
. share/spack/setup-env.sh

# load compilers
# cd etc/spack/defaults/
# cp /scratch/users/dantopa/repos/github/yaml-library/compilers.yaml/darwin/darwin-system-compilers.yaml compilers.yaml

spack clean -a
export arch=$(spack arch)

for v in ${versions}; do
    echo ""
    echo "spack install ${tpl} @ ${v} % ${compiler} arch=${arch}"
          spack install ${tpl} @ ${v} % ${compiler} arch=${arch}
done
