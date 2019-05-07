#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export compilers="gcc@8.2.0  gcc@8.1.0  gcc@7.1.0  gcc@4.8.5  arm@19.1  clang@18.4.2  clang@18.4.1  clang@18.4.0  clang@7.0.0"

census=( ${compilers} )
echo "${#census[@]} Spack-recognized compilers loaded:"
echo "${compilers}"
echo ""

# dantopa@darwin-fe2.lanl.gov:darwin-arm.libhio $ date
# Mon Apr  1 11:44:31 MDT 2019

# dantopa@darwin-fe2.lanl.gov:darwin-arm.libhio $ pwd
# /scratch/users/dantopa/new-spack/libraries/darwin-arm.libhio

# dantopa@darwin-fe2.lanl.gov:darwin-arm.libhio $ spack compilers
# ==> Available compilers
# -- arm rhel7-aarch64 --------------------------------------------
# arm@19.1
#
# -- clang rhel7-aarch64 ------------------------------------------
# clang@18.4.2  clang@18.4.1  clang@18.4.0  clang@7.0.0
#
# -- gcc centos7-x86_64 -------------------------------------------
# gcc@4.8.5
#
# -- gcc rhel7-aarch64 --------------------------------------------
# gcc@8.2.0  gcc@8.1.0  gcc@7.1.0  gcc@4.8.5
