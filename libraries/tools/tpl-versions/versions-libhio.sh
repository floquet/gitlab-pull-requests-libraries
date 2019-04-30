#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export versions="1.4.1.3  1.4.1.2"

census=( ${versions} )
echo "${#census[@]} ${tpl} versions loaded:"
echo "${versions}"
echo ""
