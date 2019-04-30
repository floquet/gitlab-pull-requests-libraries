#! /bin/bash
printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

echo "cp libraries-${host_name}.sh ${HOME}"
      cp libraries-${host_name}.sh ${HOME}
