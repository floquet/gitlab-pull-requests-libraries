#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export compilers="gcc@8.2.0  gcc@7.4.0  gcc@6.4.0  gcc@5.3.0 intel@19.0.1.144  intel@18.0.5  intel@17.0.4  intel@16.0.3 pgi@18.10  pgi@17.10  pgi@16.10"

census=( ${compilers} )
echo "${#census[@]} Spack-recognized compilers loaded:"
echo "${compilers}"
echo ""

# dantopa@sn-fey2.lanl.gov:scripts $ date
# Tue Apr 16 13:21:23 MDT 2019

# dantopa@sn-fey2.lanl.gov:scripts $ pwd
# /net/scratch4/dantopa/repos/gitlab/pull-requests/libraries/scripts

# dantopa@sn-fey2.lanl.gov:scripts $ spack compilers
# ==> Available compilers
# -- gcc centos7-x86_64 -------------------------------------------
# gcc@8.2.0  gcc@7.4.0  gcc@6.4.0  gcc@5.3.0

# -- intel centos7-x86_64 -----------------------------------------
# intel@19.0.1.144  intel@18.0.5  intel@17.0.4  intel@16.0.3

# -- pgi centos7-x86_64 -------------------------------------------
# pgi@18.10  pgi@17.10  pgi@16.10
