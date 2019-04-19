#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

function query(){
    # ${1}: application ( openmpi, pmix, ... )
    # ${2}: partition   ( arm, power9, ... )
    gospack
    cd libraries
    cd "${host_name}-${2}.${1}"
    echo ""                    >> ${FindFile}
    echo "bin/spack find ${1}" >> ${FindFile}
    bin/spack find ${1}        >> ${FindFile}
    echo ""                         >> ${FindldfFile}
    echo "bin/spack find -ldf ${1}" >> ${FindldfFile}
    bin/spack find -ldf ${1}        >> ${FindldfFile}
}

myTPLS="libhio openmpi pmix ucx"
myPartitions="standard"
# myPartitions="general arm power9"
# myPartitions="power9"

# launch from ${repos}/gitlab/pull-requests/
for t in ${myTPLS}; do
    echo ""
    echo "tpl = ${t}"
    gopull
    cd libraries/scripts/
       FindFile="$(pwd)/build-status/${t}-${host_name}-find.txt"
    FindldfFile="$(pwd)/build-status/${t}-${host_name}-find-ldf.txt"
    echo $(date) > ${FindFile}
    echo $(date) > ${FindldfFile}
    for p in ${myPartitions}; do
        echo "partition = ${p}"
        query ${t} ${p}
    done
done

gopull
cd libraries/scripts/spack-status/
