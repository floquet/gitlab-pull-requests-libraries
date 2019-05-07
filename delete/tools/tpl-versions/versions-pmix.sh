#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export versions="3.1.2  3.0.2  2.2.2  2.1.4"

census=( ${versions} )
echo "${#census[@]} ${tpl} versions loaded:"
echo "${versions}"
echo ""
