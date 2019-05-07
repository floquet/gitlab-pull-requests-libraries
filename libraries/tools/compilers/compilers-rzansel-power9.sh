#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export compilers=""
export compilers="${compilers} clang@4.0.0  clang@3.9.1"
export compilers="${compilers} gcc@8.2.0 gcc@7.3.1  gcc@4.9.3  gcc@4.8.5"
export compilers="${compilers} pgi@19.1   pgi@18.10  pgi@18.7 pgi@17.10"
export compilers="${compilers} xl@16.2  xl@16.1"

census=( ${compilers} )
echo "${#census[@]} Spack-recognized compilers loaded:"
echo "${compilers}"
echo ""

# topa1@rzansel61:spack.rzansel.ompi $ date
# Thu Apr 11 13:41:37 PDT 2019

# topa1@rzansel61:spack.rzansel.ompi $ pwd
# /usr/workspace/wsrzc/topa1/spack-home/spack.rzansel.ompi

# topa1@rzansel61:spack.rzansel.ompi $ spack compilers
# ==> Available compilers
# -- clang rhel7-ppc64le ------------------------------------------
# clang@6.0.0

# -- gcc rhel7-ppc64le --------------------------------------------
# gcc@7.3.1  gcc@4.9.3  gcc@4.8.5

# -- pgi rhel7-ppc64le --------------------------------------------
# pgi@19.1  pgi@18.10  pgi@17.10

# -- xl rhel7-ppc64le ---------------------------------------------
# xl@16.1.2  xl@16.1.1  xl@16.1.0
