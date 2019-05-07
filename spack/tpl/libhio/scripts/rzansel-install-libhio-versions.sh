#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}" # who I am

# cd /scratch/users/dantopa/new-spack/strawman.pr.libhio
cd /usr/workspace/wsrzc/topa1/spack-home/pr.libhio.spack
. share/spack/setup-env.sh

echo "spack versions libhio"
      spack versions libhio

tpl="libhio"
versions="1.4.1.3  1.4.1.2"

export compilers=""
compilers="${compilers} clang@8.0.0  clang@6.0.0"
compilers="${compilers} gcc@7.3.1  gcc@7.2.1  gcc@4.9.3  gcc@4.8.5"
compilers="${compilers} pgi@18.10  pgi@18.7  pgi@17.10"
compilers="${compilers} xl@16.1"

spack clean -a

for c in ${compilers}; do
    for v in ${versions}; do
        echo ""
        echo "spack install ${tpl} @ ${v} % ${c}"
              spack install ${tpl} @ ${v} % ${c}
    done
done

spack clean -a

date
