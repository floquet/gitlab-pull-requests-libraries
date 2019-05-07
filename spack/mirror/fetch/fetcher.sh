#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

tpl="cmake"
export versions="3.13.4 3.13.3 3.13.2 3.13.1 3.13.0 3.12.4 3.12.3 3.12.2 3.12.1 3.12.0"
versions="${versions} 3.11.4 3.11.3 3.11.2 3.11.1 3.11.0"
versions="${versions} 3.10.3 3.10.2 3.10.1 3.10.0 3.9.6 3.9.4 3.9.0 3.8.2 3.8.1 3.8.0"
versions="${versions} 3.7.2 3.7.1 3.6.1 3.6.0 3.5.1"

export master=""
for v in ${versions}; do
    master="${master} ${tpl}@${v}"
done

tpl="openblas"
export versions="0.3.5  0.3.4  0.3.3  0.3.2  0.3.1  0.3.0  0.2.20  0.2.19  0.2.18  0.2.17  0.2.16  0.2.15"
for v in ${versions}; do
    master="${master} ${tpl}@${v}"
done

echo "\${master} = ${master}"
