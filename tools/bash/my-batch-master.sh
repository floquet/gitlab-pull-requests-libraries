#!/bin/bash -l

printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

sbatch batch-tpl-darwin-arm.sh      openmpi
sbatch batch-tpl-darwin-general.sh  openmpi
sbatch batch-tpl-darwin-power9.sh   openmpi
