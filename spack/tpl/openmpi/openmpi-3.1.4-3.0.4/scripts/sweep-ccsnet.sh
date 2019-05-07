#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export compilers="gcc@8.1.0  gcc@7.3.0  gcc@4.8.5 intel@16.0.3"
export tpls="openmpi@3.1.4 openmpi@3.0.4"

cd /scratch/dantopa/repos/spack/pr-prelim.opempi-3.1.4.spack
. share/spack/setup-env.sh

spack clean -a

for c in ${compilers}; do
    for t in ${tpls}; do
        echo ""
        echo "spack install ${t} % ${c}"
              spack install ${t} % ${c}
    done
done

spack clean -a
