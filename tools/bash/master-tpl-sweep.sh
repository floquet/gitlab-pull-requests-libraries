#!/bin/bash -l
printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

# variables defined in sbatch-${hpc}-${partition}.sh
## tpl is passed as $1
## hpc, partition
## dir_pull, dir_tools, dir_results

# variables defined in this script
## dir_spack, spack_architecture

# date stamp
export ymd=$(date +%Y-%m-%d)

echo "cd ${dir_tools}"
      cd ${dir_tools}

# specify location of spack libraries
echo "source directories/libraries-${hpc}.sh"
      source directories/libraries-${hpc}.sh

export dir_spack="${dir_libraries}/${hpc}-${partition}.${tpl}"

# specify versions of tpl to build
echo "source tpl-versions/versions-${tpl}.sh"
      source tpl-versions/versions-${tpl}.sh

# get compiler list
echo "source compilers/compilers-${hpc}-${partition}.sh"
      source compilers/compilers-${hpc}-${partition}.sh

# check for klingons
echo "source klingons/${hpc}-${partition}-${tpl}.sh"
      source klingons/${hpc}-${partition}-${tpl}.sh

echo "cd ${dir_spack}"
      cd ${dir_spack}

echo ". share/spack/setup-env.sh"
      . share/spack/setup-env.sh

# find architecture once - a very slow operation
echo "export spack_architecture='arch=$(spack arch)'"
      export spack_architecture="arch=$(spack arch)"

echo "spack clean -a"
      spack clean -a

myLog="${dir_results}/log-files/${hpc}-${partition}-${tpl}.log"
echo $(date) > ${myLog}

# installs: sweep tpl versions, sweep compilers
for v in ${versions}; do
    for c in ${compilers}; do
        echo ""
        echo "spack install ${tpl} @ ${v} % ${c} ${klingons} ${spack_architecture}" >> ${myLog}
        echo "spack install ${tpl} @ ${v} % ${c} ${klingons} ${spack_architecture}"
              spack install ${tpl} @ ${v} % ${c} ${klingons} ${spack_architecture}
    done
done

# primary results
echo 'mkdir -p "${dir_results}/tpl-order"'
      mkdir -p "${dir_results}/tpl-order"

myFile="${dir_results}/spack-find/${tpl}-${hpc}-${partition}.out"
echo $(date) > ${myFile}
echo "spack find ${tpl} >> ${myFile}" >> ${myFile}
echo "spack find ${tpl} >> ${myFile}"
      spack find ${tpl} >> ${myFile}

myFile="${dir_results}/spack-find/${tpl}-ldf-${hpc}-${partition}.out"
echo $(date) > ${myFile}
echo "spack find -ldf ${tpl}  >> ${myFile}"
echo "spack find -ldf ${tpl}" >> ${myFile}
      spack find -ldf ${tpl}  >> ${myFile}

myFile="${dir_results}/spack-find/${tpl}-graph-${hpc}-${partition}.out"
echo $(date) > ${myFile}
echo "spack graph ${tpl} >> ${myFile}" >> ${myFile}
echo "spack graph ${tpl} >> ${myFile}"
      spack graph ${tpl} >> ${myFile}

# diagnostic
echo "spack compilers"
      spack compilers

echo "spack find ${tpl}"
      spack find ${tpl}

echo "spack find -ldf ${tpl}"
      spack find -ldf ${tpl}

echo "mv  ${dir_tools}/bash/${hpc}-${partition}-batch.out   ${dir_results}/batch-out/${hpc}-${partition}-${tpl}-${ymd}-batch.out"
      mv "${dir_tools}/bash/${hpc}-${partition}-batch.out" "${dir_results}/batch-out/${hpc}-${partition}-${tpl}-${ymd}-batch.out"

echo "cd ${dir_pull}"
      cd ${dir_pull}

echo "git add -A ."
      git add -A .

echo 'git commit -m "${USER} ${tpl} ${hpc} ${partition} ${ymd}"'
      git commit -m "${USER} ${tpl} ${hpc} ${partition} ${ymd}"

date
