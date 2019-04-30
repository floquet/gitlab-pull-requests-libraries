#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export compilers="cce@8.7.10  cce@8.7.9"
export compilers="gcc@8.2.0  gcc@7.3.0  gcc@6.1.0"

census=( ${compilers} )
echo "${#census[@]} Spack-recognized compilers loaded:"
echo "${compilers}"
echo ""

# dantopa@nid00159:capulin-arm.ucx $ date
# Thu Apr 25 10:28:58 MDT 2019

# dantopa@nid00159:capulin-arm.ucx $ pwd
# /lustre/cpscratch1/dantopa/repos/spack/libraries/capulin-arm.ucx

# dantopa@nid00159:capulin-arm.ucx $ spack compilers
# ==> Available compilers
# -- cce cnl6-any -------------------------------------------------
# cce@8.7.10  cce@8.7.9

# -- gcc cnl6-any -------------------------------------------------
# gcc@8.2.0  gcc@7.3.0  gcc@6.1.0
