#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl="openmpi"
export versions="4.0.0 4.0.1rc1"
export compilers="gcc@7.3.1  gcc@7.2.1  gcc@4.9.3  gcc@4.9.3  gcc@4.8.5"
export compilers="${compilers} pgi@18.10  pgi@18.7  pgi@17.10"
export compilers="${compilers} xl@16.1"

# locate, activate Spack
cd /usr/workspace/wsrzc/topa1/spack-home/spack.rzansel.ompi
. share/spack/setup-env.sh

# load compilers
cd etc/spack/defaults/
cp darwin-power9-compilers.yaml compilers.yaml

export dir="/usr/workspace/wsrzc/topa1/spack-home/spack.rzansel.ompi/batch-scripts"
source "${dir}/sweep-openmpi.sh"
