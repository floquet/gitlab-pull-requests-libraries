#!/bin/bash -l
# sbatch darwin-general.sh pmix
printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

# variables defined in ${HOME}/libraries-${hpc}.sh
## dir_spack_libraries, dir_pull_libraries

# variables defined in sbatch-${hpc}-${partition}.sh
## tpl is passed as $1
## hpc, partition
## dir_tools, dir_results (built from dir_spack_libraries, dir_pull_libraries)

# variables defined in this script
## spack_architecture

# date stamp
export ymd=$(date +%Y-%m-%d)
export dir_spack="${dir_spack_libraries}/${hpc}-${partition}.${tpl}"

echo "cd ${dir_tools}"
      cd ${dir_tools}

# specify location of spack libraries
echo "source directories/libraries-${hpc}.sh"
      source directories/libraries-${hpc}.sh

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

echo "spack compilers"
      spack compilers

echo "ls -alh etc/spack/defaults"
      ls -alh etc/spack/defaults

echo "cat etc/spack/defaults/compilers.yaml"
      cat etc/spack/defaults/compilers.yaml

echo "spack config get compilers"
      spack config get compilers

export command_log="${dir_results}/command-log/${hpc}-${partition}-${tpl}-command.log"
echo $(date) > ${command_log}

export install_log="${dir_results}/install-log/${hpc}-${partition}-${tpl}-install.log"
echo $(date) >  ${install_log}
echo ""      >> ${install_log}

# instals: sweep tpl versions, sweep compilers
k=0
for v in ${versions}; do
    for c in ${compilers}; do
        k=$((k+1))
        echo "" >> ${install_log}
        echo "${k} spack install ${tpl} @ ${v} % ${c} ${klingons} ${spack_architecture}" >> ${command_log}
        echo      "spack install ${tpl} @ ${v} % ${c} ${klingons} ${spack_architecture}" >> ${install_log}
        echo      "spack install ${tpl} @ ${v} % ${c} ${klingons} ${spack_architecture} 2>&1 >> ${install_log}"
                   spack install ${tpl} @ ${v} % ${c} ${klingons} ${spack_architecture} 2>&1 >> ${install_log}
    done
done

echo "spack clean -a"
      spack clean -a

# primary results
echo 'mkdir -p "${dir_results}/platform-order"'
      mkdir -p "${dir_results}/platform-order"
echo 'mkdir -p "${dir_results}/tpl-order"'
      mkdir -p "${dir_results}/tpl-order"
echo 'mkdir -p "${dir_results}/graphs"'
      mkdir -p "${dir_results}/graphs"

# platform-order
myFile="${dir_results}/platform-order/${hpc}-${partition}-${tpl}.out"
echo $(date) >  ${myFile}
echo $(pwd)  >> ${myFile}
echo "spack find ${tpl} >> ${myFile}" >> ${myFile}
echo "spack find ${tpl} >> ${myFile}"
      spack find ${tpl} >> ${myFile}

# tpl-order
myFile="${dir_results}/tpl-order/${tpl}-${hpc}-${partition}.out"
echo $(date) >  ${myFile}
echo $(pwd)  >> ${myFile}
echo "spack find ${tpl} >> ${myFile}" >> ${myFile}
echo "spack find ${tpl} >> ${myFile}"
      spack find ${tpl} >> ${myFile}

myFile="${dir_results}/tpl-order/${tpl}-${hpc}-${partition}-ldf.out"
echo $(date) >  ${myFile}
echo $(pwd)  >> ${myFile}
echo "spack find -ldf ${tpl}  >> ${myFile}"
echo "spack find -ldf ${tpl}" >> ${myFile}
      spack find -ldf ${tpl}  >> ${myFile}

# graphs
myFile="${dir_results}/graphs/${tpl}-${hpc}-${partition}-graph.out"
echo $(date) >  ${myFile}
echo $(pwd)  >> ${myFile}
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

echo "cd ${dir_pull_libraries}"
      cd ${dir_pull_libraries}

echo "git add -A ."
      git add -A .

echo 'git commit -m "${USER} ${tpl} ${hpc} ${partition} ${ymd}"'
      git commit -m "${USER} ${tpl} ${hpc} ${partition} ${ymd}"

date
