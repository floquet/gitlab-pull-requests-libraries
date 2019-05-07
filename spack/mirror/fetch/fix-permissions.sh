#! /bin/bash
printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

gogitlab
cd topa-mirror-spack/
chown -R dantopa:user_contrib *
