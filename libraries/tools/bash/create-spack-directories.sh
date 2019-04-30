#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export  dir="/scratch/users/dantopa/new-spack"
export  hpc="darwin"
export arch="arm general power9"
export  tpl="openmpi libhio pmix ucx"

cd ${dir}/spack
git pull
cd ${dir}

for a in ${arch}; do
    for t in ${tpl}; do
        echo "cp -a ${dir}/spack ${dir}/libraries/${hpc}-${a}.${t}"
              cp -a ${dir}/spack ${dir}/libraries/${hpc}-${a}.${t}
    done
done
