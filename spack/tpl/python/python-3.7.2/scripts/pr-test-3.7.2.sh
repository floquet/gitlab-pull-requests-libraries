#!/bin/bash -l
printf '%s\n' "$(date) ${BASH_SOURCE[0]}"

versions="3.7.2  3.7.1  3.6.8  3.6.7  3.6.6"

spack clean -a

for v in ${versions}; do
    spack install python @ ${v} % gcc @ 4.8.5
    spack clean -a
done
