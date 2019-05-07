#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

function list_builder() {
    tpl=$1
    ver=$2
    for v in ${ver}; do
        export master="${master} ${tpl}@${v}"
    done
}

export master=""

tpl="libxml2"
export versions="2.9.8  2.9.4  2.9.2  2.7.8"
list_builder "${tpl}" "${versions[@]}"

echo "\${master} = ${master}"

cd ${SPACK_ROOT}

for m in ${master}; do
    echo "spack fetch ${m}"
          spack fetch ${m} &
done

wait

cd ${SPACK_ROOT}/var/spack/cache/

export dir_topa_mirror_spack="/scratch/users/dantopa/repos/gitlab/topa-mirror-spack"

echo ""
echo "rsync -var . ${dir_topa_mirror_spack}"
      rsync -var . ${dir_topa_mirror_spack}

echo ""
echo "lss ${dir_topa_mirror_spack}"
      lss ${dir_topa_mirror_spack}

echo ""
echo "cd ${dir_topa_mirror_spack}"
      cd ${dir_topa_mirror_spack}

echo ""
echo "git add -A ."
      git add -A .
echo 'git commit -m "${HOSTNAME} ${USER} $(date)"'
      git commit -m "${HOSTNAME} ${USER} $(date)"
