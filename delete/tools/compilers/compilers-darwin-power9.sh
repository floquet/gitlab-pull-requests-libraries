#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export compilers="gcc@8.2.0  gcc@7.3.0  gcc@6.4.0  gcc@4.8.5"
export compilers="${compilers} pgi@18.10  pgi@18.7  pgi@17.10"
export compilers="${compilers} xl@16.1"

census=( ${compilers} )
echo "${#census[@]} Spack-recognized compilers loaded:"
echo "${compilers}"
echo ""

#dantopa@darwin-fe2.lanl.gov:darwin-power9.libhio $ date
# Mon Apr  1 12:08:42 MDT 2019

# dantopa@darwin-fe2.lanl.gov:darwin-power9.libhio $ pwd
# /scratch/users/dantopa/new-spack/libraries/darwin-power9.libhio

# dantopa@darwin-fe2.lanl.gov:darwin-power9.libhio $ spack compilers
# ==> Available compilers
# -- gcc centos7-x86_64 -------------------------------------------
# gcc@4.8.5
#
# -- gcc rhel7-ppc64le --------------------------------------------
# gcc@8.2.0  gcc@8.1.0  gcc@7.3.0  gcc@6.4.0  gcc@4.8.5
#
# -- pgi rhel7-ppc64le --------------------------------------------
# pgi@18.10  pgi@18.7  pgi@18.4  pgi@18.3  pgi@17.10  pgi@16.10
#
# -- xl rhel7-ppc64le ---------------------------------------------
# xl@16.1
#
# -- xl_r rhel7-ppc64le -------------------------------------------
# xl_r@16.1
