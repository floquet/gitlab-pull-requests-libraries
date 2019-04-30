#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

sbatch sbatch-darwin-arm.sh      ${1}
sbatch sbatch-darwin-general.sh  ${1}
sbatch sbatch-darwin-power9.sh   ${1}
