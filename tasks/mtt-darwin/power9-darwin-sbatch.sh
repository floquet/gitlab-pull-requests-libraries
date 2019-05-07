#!/bin/bash -l

# # Darwin power9 login
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=10:00:00
#SBATCH --partition=power9
#SBATCH --output=/home/dantopa/darwin-power9-batch.out
#SBATCH --job-name=mtt

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

function new_step(){
    counter=$((counter+1))
    echo ""
    echo "Step ${counter}: ${1}"
}

export  mttDirectory="mtt-spack"
export baseDirectory="/scratch/users/dantopa/repos/spack"
export       counter=0

new_step "Jump to repos directory"
echo 'cd "${baseDirectory}"'
      cd "${baseDirectory}"
echo "\${pwd} = ${pwd}"

new_step "Remove existing build"
echo "rm -rf ${mttDirectory}"
      rm -rf ${mttDirectory}

new_step "Clone into mtt-spack"
echo "git clone https://github.com/spack/spack ${mttDirectory}"
      git clone https://github.com/spack/spack ${mttDirectory}

new_step "Jump to ${mttDirectory}"
echo "cd ${mttDirectory}"
      cd ${mttDirectory}

new_step "get yamls from clone-zone"
echo "cp /scratch/users/dantopa/repos/github/yaml-library/clone-zone/darwin/power9/*.yaml etc/spack/defaults"
      cp /scratch/users/dantopa/repos/github/yaml-library/clone-zone/darwin/power9/*.yaml etc/spack/defaults

new_step "initialize spack"
echo "source share/spack/setup-env.sh"
      source share/spack/setup-env.sh

new_step "create subdirectory probe"
echo "mkdir -p probe"
      mkdir -p probe

new_step "system check"
echo "spack arch > probe/spack-architecture.txt 2>&1"
      spack arch > probe/spack-architecture.txt 2>&1
echo "spack compilers > probe/spack-compilers.txt 2>&1"
      spack compilers > probe/spack-compilers.txt 2>&1

new_step "install python"
echo "spack install python @ 3.7.3 % gcc @ 4.8.5 > probe/python-build.txt 2>&1"
      spack install python @ 3.7.3 % gcc @ 4.8.5 > probe/python-build.txt 2>&1

new_step "install py-virtualenvwrapper"
echo "spack install py-virtualenvwrapper % gcc @ 4.8.5 > probe/py-virtualenvwrapper-build.txt 2>&1"
      spack install py-virtualenvwrapper % gcc @ 4.8.5 > probe/py-virtualenvwrapper-build.txt 2>&1

new_step "activate py-virtualenvwrapper"
echo "spack activate py-virtualenvwrapper > probe/py-virtualenvwrapper-activate.txt 2>&1"
      spack activate py-virtualenvwrapper > probe/py-virtualenvwrapper-activate.txt 2>&1

new_step "check python"
echo "which python"
      which python
echo "python --version"
      python --version

new_step "spack find"
echo "spack find > probe/darwin-power9-batch.out"
      spack find > probe/darwin-power9-batch.out

new_step "catalog batch output"
echo "mv /home/dantopa/darwin-power9-batch.out probe/darwin-power9-batch.out"
      mv /home/dantopa/darwin-power9-batch.out probe/darwin-power9-batch.out

new_step "upgrade pip"
echo "pip install --upgrade --user pip"
      pip install --upgrade --user pip

     
