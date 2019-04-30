#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export compilers="clang@7.0.0"
export compilers="${compilers} gcc@8.2.0  gcc@7.3.0  gcc@6.4.0  gcc@4.8.5"
export compilers="${compilers} pgi@18.10  pgi@17.10  pgi@16.10"
export compilers="${compilers} xl@16.1"

census=( ${compilers} )
echo "${#census[@]} Spack-recognized compilers loaded:"
echo "${compilers}"
echo ""

# dantopa@cn2034:darwin-power9.ucx $ spack compilers
# ==> Available compilers
# -- clang rhel7-ppc64le ------------------------------------------
# clang@7.0.0

# -- gcc centos7-x86_64 -------------------------------------------
# gcc@4.8.5

# -- gcc rhel7-ppc64le --------------------------------------------
# gcc@8.2.0  gcc@7.3.0  gcc@6.4.0  gcc@4.8.5

# -- pgi rhel7-ppc64le --------------------------------------------
# pgi@18.10  pgi@17.10  pgi@16.10

# -- xl rhel7-ppc64le ---------------------------------------------
# xl@16.1
