#!/bin/bash -l
printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

function query(){
    # ${1}: application ( openmpi, pmix, ... )
    # ${2}: partition   ( arm, power9, ... )
    gospack
    cd libraries
    cd "${host_name}-${2}.${1}"
    echo ""                    >> ${FindFile}
    echo "partition: ${2}"     >> ${FindFile}
    echo "bin/spack find ${1}" >> ${FindFile}
    bin/spack find ${1}        >> ${FindFile}
    echo ""                         >> ${FindldfFile}
    echo "partition: ${2}"          >> ${FindldfFile}
    echo "bin/spack find -ldf ${1}" >> ${FindldfFile}
    bin/spack find -ldf ${1}        >> ${FindldfFile}
}

myTPLS="libhio openmpi pmix ucx"

# myPartitions="standard"
# myPartitions="general arm power9"
myPartitions="power9"
# myPartitions="arm"

echo "source ${HOME}/libraries-${hpc}.sh"
      source ${HOME}/libraries-${hpc}.sh

mkdir -p "${dir_results}/build-status/find"
mkdir -p "${dir_results}/build-status/find-ldf"

for t in ${myTPLS}; do
    echo ""
    echo "tpl = ${t}"
    gopull
    cd libraries/results/
       FindFile="$(pwd)/build-status/find/${t}-${host_name}-find.txt"
    FindldfFile="$(pwd)/build-status/find-ldf/${t}-${host_name}-find-ldf.txt"
    echo $(date) ${BASH_SOURCE[0]} >  ${FindFile}
    echo $(pwd)                    >> ${FindFile}
    echo ""                        >> ${FindFile}
    echo $(date) ${BASH_SOURCE[0]} >  ${FindldfFile}
    echo $(pwd)                    >> ${FindldfFile}
    echo ""                        >> ${FindldfFile}
    for p in ${myPartitions}; do
        echo "partition = ${p}"
        query ${t} ${p}
    done
done

gopull
cd libraries/results/build-status/
