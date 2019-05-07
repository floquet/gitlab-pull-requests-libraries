#!/bin/bash -l

# # darwin ARM login
#SBATCH --nodes=1
#SBATCH --qos=long
#SBATCH --time=5:00:00
#SBATCH --partition=arm
#SBATCH --output=batch.out
#SBATCH --job-name=pr-python

export tpl="python"
export tpl_versions="3.7.2  3.7.1  3.6.8  3.6.7  3.6.6"

export myCompilers="gcc@4.8.5"

cd /scratch/users/dantopa/new-spack/pr.new.python-3.7.2/arm
. share/spack/setup-env.sh
spack clean -a

for v in ${tpl_versions}; do
    for c in ${myCompilers}; do
        echo ""
        echo "spack install ${tpl} @ ${v} % ${c}  > scripts/${tpl}-${v}-${c}.out 2>&1"
        echo "spack install ${tpl} @ ${v} % ${c}" > scripts/${tpl}-${v}-${c}.out 2>&1
              spack install ${tpl} @ ${v} % ${c} >> scripts/${tpl}-${v}-${c}.out 2>&1
        echo ""
             spack clean -a
    done
done
