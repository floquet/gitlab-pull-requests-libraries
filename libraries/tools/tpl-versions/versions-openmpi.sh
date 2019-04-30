#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export versions="4.0.1  3.1.4  3.0.4  2.1.6"

census=( ${versions} )
echo "${#census[@]} ${tpl} versions loaded:"
echo "${versions}"
echo ""
