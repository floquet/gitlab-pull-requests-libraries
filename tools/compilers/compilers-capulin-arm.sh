#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export compilers="gcc@8.2.0  gcc@7.3.0  gcc@6.3.0  gcc@5.3.0 gcc@4.9.3  intel@18.0.5  intel@17.0.4  intel@16.0.3 cce@8.7.9 cce@8.6.5 cce@8.5.8 "

census=( ${compilers} )
echo "${#census[@]} Spack-recognized compilers loaded:"
echo "${compilers}"
echo ""

# dantopa@cp-loginy:openmpi.spack $ date
# Tue Apr 16 10:41:29 MDT 2019

# dantopa@cp-loginy:openmpi.spack $ pwd
# /lustre/cpscratch1/dantopa/repos/github/libraries/openmpi.spack

# dantopa@cp-loginy:openmpi.spack $ spack compilers
# ==> Available compilers
# -- cce cnl6-any -------------------------------------------------
# cce@9.0.0.21672  cce@8.7.9  cce@8.7.7  cce@8.7.5  cce@8.7.2  cce@8.7.0  cce@8.6.2  cce@8.6.0  cce@8.5.7  cce@8.5.5  cce@8.5.2  cce@8.4.6
# cce@9.0.0.21672  cce@8.7.8  cce@8.7.6  cce@8.7.4  cce@8.7.1  cce@8.6.5  cce@8.6.1  cce@8.5.8  cce@8.5.6  cce@8.5.3  cce@8.5.0

# -- gcc cnl6-any -------------------------------------------------
# gcc@8.2.0  gcc@7.3.0  gcc@7.2.0  gcc@7.1.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0  gcc@5.3.0  gcc@5.2.0  gcc@4.9.3

# -- gcc sles12-x86_64 --------------------------------------------
# gcc@4.8

# -- intel cnl6-any -----------------------------------------------
# intel@18.0.5  intel@18.0.2  intel@17.0.4  intel@17.0.1  intel@16.0.3  intel@15.0.7  intel@15.0.5
