#!/bin/bash -l
printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export myPartitions="general arm power9"
export       myTPLS="libhio openmpi pmix ucx"
export   dir_source="${repos}/github/yaml-library/clone-zone/darwin"
    export dir_sink="${repos}/spack/libraries"
#export         yaml="compilers mirrors tcl-modules lmod-modules packages"

function puller(){
    # ${1}: application ( openmpi, pmix, ... )
    # ${2}: partition   ( arm, power9, ... )
    echo "cd ${dir_sink}"
          cd ${dir_sink}

    echo 'cd "${host_name}-${2}.${1}"'
          cd "${host_name}-${2}.${1}"

    export mySink="$(pwd)"

    echo "\${mySink} = ${mySink}"

    echo ""

    echo "git fetch --all"
          git fetch --all

    echo "git reset --hard origin/develop"
          git reset --hard origin/develop

    echo 'cp ${dir_source}/${2}/*.yaml ${mySink}/etc/spack/defaults'
          cp ${dir_source}/${2}/*.yaml ${mySink}/etc/spack/defaults
}

for p in ${myPartitions}; do
    for t in ${myTPLS}; do
        puller ${t} ${p}
    done
done
