#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}" # who I am

# cd /scratch/users/dantopa/new-spack/strawman.pr.libhio
cd /Users/l127914/Documents/repos/github/pr.libhio.spack
. share/spack/setup-env.sh

echo "spack versions libhio"
      spack versions libhio

tpl="libhio"
versions="1.4.1.3  1.4.1.2"

export compilers=""
compilers="${compilers} clang@9.0.0-apple  clang@7.0.0"
compilers="${compilers} gcc@8.2.0  gcc@6.3.0  gcc@4.8.5"

spack clean -a

for c in ${compilers}; do
    for v in ${versions}; do
        echo ""
        echo "spack install ${tpl} @ ${v} % ${c}"
              spack install ${tpl} @ ${v} % ${c}
              spack clean -a
    done
done
