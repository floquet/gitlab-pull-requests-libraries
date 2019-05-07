#! /bin/bash
printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

myTPLs="libhio openmpi pmix ucx"

function update_spack{
    golibraries
    cd rzansel-power9.${1}
    git stash
    git pull
    cp ${github}/yaml-library/clone-zone/rzansel/*.yaml etc/spack/defaults/.
}

for t in ${myTPLs}; do
    update_spack ${t}
done
