#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

echo ""
echo "spack compilers"
      spack compilers

export arch=$(spack arch)

spack clean --all

for c in ${compilers}; do
    for v in ${versions}; do
        echo ""
        echo "spack install ${tpl} @ ${v} % ${c} arch=${arch} ${klingons}"
              spack install ${tpl} @ ${v} % ${c} arch=${arch} ${klingons}
    done
done

spack clean --all

echo ""
echo "spack find openmpi"
      spack find openmpi

echo ""
echo "spack find -ldf openmpi"
      spack find -ldf openmpi

date