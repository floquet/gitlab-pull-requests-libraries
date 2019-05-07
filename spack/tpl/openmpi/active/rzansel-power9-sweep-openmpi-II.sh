#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

export tpl="openmpi"

export versions="2.1.6 3.0.3 3.1.3 4.0.0 4.0.1rc1"

export compilers=""
export compilers="${compilers} clang@9.0.0"
export compilers="${compilers} pgi@19.1  pgi@18.10  pgi@18.7"
export compilers="${compilers} xl@16.2  xl@16.1.1  xl@16.1"

export dir="/usr/workspace/wsrzc/topa1/spack-home/openmpi.current.spack"
export klingons=" ^libpciaccess/pezczu3"

# locate, activate Spack
cd ${dir}
. share/spack/setup-env.sh

# load compilers
cd etc/spack/defaults/
cp module-compilers.yaml compilers.yaml

source "${dir}/bash-scripts/sweep-openmpi.sh"

cd ${SPACK_ROOT}
