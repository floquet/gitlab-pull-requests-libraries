#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export dir_spack_libraries="/scratch/users/dantopa/new-spack/libraries"
