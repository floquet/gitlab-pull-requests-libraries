#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export compilers="gcc@8.2.0  gcc@7.3.0  gcc@6.4.0  gcc@5.5.0  gcc@4.9.3  gcc@4.8.5"
export compilers="${compilers} intel@18.0.3  intel@17.0.6  intel@16.0.4  pgi@18.10  pgi@18.7  pgi@17.10  pgi@16.10"

census=( ${compilers} )
echo "${#census[@]} Spack-recognized compilers loaded:"
echo "${compilers}"
echo ""

# Mon Apr  1 11:49:09 MDT 2019

# dantopa@darwin-fe2.lanl.gov:defaults $ pwd
# /scratch/users/dantopa/new-spack/libraries/darwin-general.libhio/etc/spack/defaults

# dantopa@darwin-fe2.lanl.gov:defaults $ spack compilers
# ==> Available compilers
# -- gcc centos7-x86_64 -------------------------------------------
# gcc@8.2.0  gcc@8.1.0  gcc@7.3.0  gcc@7.2.0  gcc@6.4.0  gcc@6.3.0  gcc@5.5.0  gcc@5.4.0  gcc@4.9.3  gcc@4.9.2  gcc@4.8.5  gcc@4.6.4
#
# -- intel centos7-x86_64 -----------------------------------------
# intel@18.0.3  intel@18.0.2  intel@17.0.6  intel@17.0.1  intel@16.0.4  intel@16.0.3
#
# -- pgi centos7-x86_64 -------------------------------------------
# pgi@18.10  pgi@18.7  pgi@18.4  pgi@18.3  pgi@17.10  pgi@17.4  pgi@16.10
