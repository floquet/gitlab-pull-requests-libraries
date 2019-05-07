#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export compilers="cce@8.7.9  cce@8.7.8  gcc@8.2.0  gcc@7.3.0  gcc@6.3.0  intel@19.0.1  intel@18.0.5"

census=( ${compilers} )
echo "${#census[@]} Spack-recognized compilers loaded:"
echo "${compilers}"
echo ""

# dantopa@nid00110:trinitite-standard.libhio $ date
# Thu Apr  4 14:11:13 MDT 2019

# dantopa@nid00110:trinitite-standard.libhio $ pwd
# /lustre/ttscratch1/dantopa/spack/libraries/trinitite-standard.libhio

# dantopa@nid00110:trinitite-standard.libhio $ spack compilers
# ==> Available compilers
# -- cce cnl6-any -------------------------------------------------
# cce@8.7.9  cce@8.7.8
#
# -- gcc cnl6-any -------------------------------------------------
# gcc@8.2.0  gcc@7.3.0  gcc@6.3.0
#
# -- intel cnl6-any -----------------------------------------------
# intel@19.0.1  intel@18.0.5
