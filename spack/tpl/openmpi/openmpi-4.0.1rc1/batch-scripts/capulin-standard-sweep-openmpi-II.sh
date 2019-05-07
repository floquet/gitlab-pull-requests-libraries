#!/bin/bash -l

# # darwin ARM login
#SBATCH --nodes=1
#SBATCH --qos=standard
#SBATCH --time=10:00:00
#SBATCH --output=capulin-standard-batch.out
#SBATCH --job-name=openmpi

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl="openmpi"
export versions="4.0.0 4.0.1rc1"
export compilers="cce@9.0.0.27896  cce@9.0.0.21672  cce@9.0.0.21672  cce@8.7.8"
# $ spack install openmpi@4.0.1rc1 % gcc@6.1.0 ^zlib/qd2bcw6 ^libpciaccess/kjzalvs ^hwloc/fyyzqam

# locate, activate Spack
export dir="/lustre/cpscratch1/dantopa/repos/github/spack-develop-2019-03-13"
cd ${dir}
. share/spack/setup-env.sh

echo ""
echo "spack compilers"
      spack compilers

export arch=$(spack arch)

spack clean --all

for c in ${compilers}; do
    for v in ${versions}; do
        echo ""
        echo "spack install ${tpl} @ ${v} % ${c} ^hwloc/fyyzqam arch=${arch}"
              spack install ${tpl} @ ${v} % ${c} ^hwloc/fyyzqam arch=${arch}
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
