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

tpl="autoconf"
export versions="2.69  2.62  2.59  2.13"
list_builder "${tpl}" "${versions[@]}"

tpl="automake"
export versions="1.16.1  1.15.1  1.15  1.14.1  1.13.4  1.11.6"
list_builder "${tpl}" "${versions[@]}"

tpl="binutils"
export versions="2.31.1  2.29.1  2.28  2.27  2.26  2.25.1  2.25  2.24  2.23.2  2.20.1"
list_builder "${tpl}" "${versions[@]}"

tpl="bison"
export versions="3.0.5  3.0.4  2.7"
list_builder "${tpl}" "${versions[@]}"

tpl="boost"
export versions="1.67.0  1.65.0  1.62.0  1.59.0  1.56.0  1.53.0  1.50.0 1.69.0   1.66.0  1.64.0  1.61.0  1.58.0  1.55.0  1.52.0"
export versions="${versions} 1.68.0   1.65.1  1.63.0  1.60.0  1.57.0  1.54.0  1.51.0"
list_builder "${tpl}" "${versions[@]}"

tpl="bzip2"
export versions="1.0.6"
list_builder "${tpl}" "${versions[@]}"

tpl="charmpp"
export versions="6.9.0  6.8.2  6.8.1  6.8.0  6.7.1  6.7.0  6.6.1  6.6.0  6.5.1"
list_builder "${tpl}" "${versions[@]}"

tpl="cmake"
export versions="3.13.4 3.13.3 3.13.2 3.13.1 3.13.0 3.12.4 3.12.3 3.12.2 3.12.1 3.12.0"
export versions="${versions} 3.11.4 3.11.3 3.11.2 3.11.1 3.11.0"
export versions="${versions} 3.10.3 3.10.2 3.10.1 3.10.0 3.9.6 3.9.4 3.9.0 3.8.2 3.8.1 3.8.0"
export versions="${versions} 3.7.2 3.7.1 3.6.1 3.6.0 3.5.1"
list_builder "${tpl}" "${versions[@]}"

tpl="diffutils"
export versions="3.7  3.6"
list_builder "${tpl}" "${versions[@]}"

tpl="cuda"
export versions="10.0.130  9.2.88  9.1.85  9.0.176  8.0.61  8.0.44  7.5.18  6.5.14"
list_builder "${tpl}" "${versions[@]}"

tpl="curl"
export versions="7.63.0  7.59.0  7.54.0  7.52.1  7.50.2  7.49.1  7.46.0  7.44.0  7.42.1"
export versions="${versions} 7.60.0  7.56.0  7.53.1  7.50.3  7.50.1  7.47.1  7.45.0  7.43.0"
list_builder "${tpl}" "${versions[@]}"

tpl="expat"
export versions="2.2.5  2.2.2  2.2.0"
list_builder "${tpl}" "${versions[@]}"

tpl="findutils"
export versions="4.6.0  4.4.1  4.2.33  4.2.31  4.2.29  4.2.27  4.2.25  4.2.20  4.2.15  4.1"
versions="${versions} 4.4.2  4.4.0  4.2.32  4.2.30  4.2.28  4.2.26  4.2.23  4.2.18  4.1.20"
list_builder "${tpl}" "${versions[@]}"

tpl="flang"
export versions="20180921  20180612"
list_builder "${tpl}" "${versions[@]}"

tpl="flex"
export versions="2.6.4  2.6.3  2.6.1  2.6.0  2.5.39"
list_builder "${tpl}" "${versions[@]}"

tpl="gdbm"
export versions="1.18.1  1.14.1  1.13  1.12  1.11  1.10  1.9.1  1.9"
list_builder "${tpl}" "${versions[@]}"

tpl="gettext"
export versions="0.19.8.1  0.19.7"
list_builder "${tpl}" "${versions[@]}"

tpl="git"
export versions="2.20.1  2.19.1  2.17.1  2.15.1  2.13.0  2.12.1  2.11.1  2.9.3  2.9.1  2.8.4  2.8.2  2.8.0  2.7.1"
export versions="${versions} 2.19.2  2.18.0  2.17.0  2.14.1  2.12.2  2.12.0  2.11.0  2.9.2  2.9.0  2.8.3  2.8.1  2.7.3"
list_builder "${tpl}" "${versions[@]}"

tpl="glib"
export versions="2.56.3  2.56.2  2.56.1  2.56.0  2.55.1  2.53.1  2.49.7  2.49.4  2.48.1  2.42.1"
list_builder "${tpl}" "${versions[@]}"

tpl="gmp"
export versions="6.1.2  6.1.1  6.1.0  6.0.0a  6.0.0  5.1.3  4.3.2"
list_builder "${tpl}" "${versions[@]}"

tpl="gperf"
export versions="3.0.4"
list_builder "${tpl}" "${versions[@]}"

tpl="hdf5"
export versions="1.10.5  1.10.4  1.10.3  1.10.2  1.10.1  1.10.0-patch1  1.10.0  1.8.21"
list_builder "${tpl}" "${versions[@]}"

tpl="hwloc"
export versions="2.0.2  2.0.1  2.0.0  1.11.11  1.11.10  1.11.9  1.11.8  1.11.7  1.11.6  1.11.5  1.11.4  1.11.3  1.11.2  1.11.1  1.9"
list_builder "${tpl}" "${versions[@]}"

tpl="hypre"
export versions="2.15.1  2.15.0  2.14.0  2.13.0  2.12.1  2.11.2  2.11.1  2.10.1  2.10.0b"
list_builder "${tpl}" "${versions[@]}"

tpl="icu4c"
export versions="60.1  58.2  57.1"
list_builder "${tpl}" "${versions[@]}"

tpl="intel-mkl"
export versions="2019.3.199  2019.1.144  2019.0.117  2018.4.274  2018.3.222  2018.2.199  2018.1.163  2018.0.128  2017.4.239  2017.3.196  2017.2.174  2017.1.132  2017.0.098"
list_builder "${tpl}" "${versions[@]}"

tpl="intel-mpi"
export versions="2019.3.199  2019.1.144  2019.0.117  2018.4.274  2018.3.222  2018.2.199  2018.1.163  2018.0.128  2017.4.239  2017.3.196  2017.2.174  2017.1.132"
list_builder "${tpl}" "${versions[@]}"

tpl="intel-parallel-studio"
export versions="professional.2019.3 professional.2019.1 professional.2019.0"
versions="${versions} professional.2018.4 professional.2018.3 professional.2018.2 professional.2018.1 professional.2018.0"
versions="${versions} professional.2017.7 professional.2017.6 professional.2017.5 professional.2017.4 professional.2017.3 professional.2017.2 professional.2017.1 professional.2017.0"
versions="${versions} composer.2019.3 composer.2019.1 composer.2019.0"
versions="${versions} composer.2018.4 composer.2018.3 composer.2018.2 composer.2018.1 composer.2018.0"
versions="${versions} composer.2017.7composer.2017.6 composer.2017.5 composer.2017.4 composer.2017.3 composer.2017.2 composer.2017.1 composer.2017.0"
versions="${versions} cluster.2019.3 cluster.2019.2 cluster.2019.1 cluster.2019.0"
versions="${versions} cluster.2018.4 cluster.2018.3 cluster.2018.2 cluster.2018.1 cluster.2018.0"
versions="${versions} cluster.2017.7 cluster.2017.6 cluster.2017.5 cluster.2017.4 cluster.2017.3 cluster.2017.2 cluster.2017.1 cluster.2017.0"
list_builder "${tpl}" "${versions[@]}"

tpl="isl"
export versions="0.19  0.18  0.15  0.14"
list_builder "${tpl}" "${versions[@]}"

tpl="json-c"
export versions="0.13.1  0.12.1  0.11"
list_builder "${tpl}" "${versions[@]}"

tpl="julia"
export versions="0.6.2  0.5.2  0.5.1  0.5.0  0.4.7  0.4.6  0.4.5  0.4.3"
list_builder "${tpl}" "${versions[@]}"

tpl="lzo"
export versions="2.10  2.09  2.08  2.07  2.06  2.05"
list_builder "${tpl}" "${versions[@]}"

tpl="lz4"
export versions="1.8.1.2  1.7.5  1.3.1"
list_builder "${tpl}" "${versions[@]}"

tpl="kokkos"
export versions=" 2.7.00  2.5.00  2.04.11  2.04.04  2.04.00  2.03.13  2.03.05  2.03.00  2.02.15  2.02.07"
list_builder "${tpl}" "${versions[@]}"

tpl="lapack"
export versions="1.4.1.3  1.4.1.2  1.4.1.1  1.4.1.0"
list_builder "${tpl}" "${versions[@]}"

tpl="libbsd"
export versions="0.9.1  0.9.0  0.8.7  0.8.6"
list_builder "${tpl}" "${versions[@]}"

tpl="libelf"
export versions="0.8.13"
list_builder "${tpl}" "${versions[@]}"

tpl="libevent"
export versions="2.1.8  2.0.22  2.0.21  2.0.20  2.0.19  2.0.18  2.0.17  2.0.16  2.0.15  2.0.14  2.0.13  2.0.12"
list_builder "${tpl}" "${versions[@]}"

tpl="libffi"
export versions="3.2.1"
list_builder "${tpl}" "${versions[@]}"

tpl="libhio"
export versions="1.4.1.3  1.4.1.2  1.4.1.1  1.4.1.0"
list_builder "${tpl}" "${versions[@]}"

tpl="libnl"
export versions="3.3.0  3.2.25"
list_builder "${tpl}" "${versions[@]}"

tpl="libpciaccess"
export versions="0.13.5  0.13.4"
list_builder "${tpl}" "${versions[@]}"

tpl="libsigsegv"
export versions="2.11  2.10"
list_builder "${tpl}" "${versions[@]}"

tpl="libtool"
export versions="2.4.6  2.4.2"
list_builder "${tpl}" "${versions[@]}"

tpl="libunwind"
export versions="2018.10.12  1.3-rc1  1.2.1  1.1"
list_builder "${tpl}" "${versions[@]}"

tpl="libxml2"
export versions="2.9.8  2.9.4  2.9.2  2.7.8"
list_builder "${tpl}" "${versions[@]}"

tpl="lmod"
export versions="7.8.15  7.8  7.7.29  7.7.13  7.7  7.6.14  7.4.11  7.4.10  7.4.9  7.4.8  7.4.5  7.4.1  7.3  6.4.5  6.4.1  6.3.7  6.0.1"
list_builder "${tpl}" "${versions[@]}"

tpl="llvm"
export versions="7.0.1 7.0.0  6.0.0  5.0.1  4.0.1  3.9.1  6.0.1  5.0.2  5.0.0  4.0.0  3.9.0"
list_builder "${tpl}" "${versions[@]}"

tpl="lz4"
export versions="1.8.3  1.8.1.2  1.7.5  1.3.1"
list_builder "${tpl}" "${versions[@]}"

tpl="lzo"
export versions="2.10  2.09  2.08  2.07  2.06  2.05"
list_builder "${tpl}" "${versions[@]}"

tpl="m4"
export versions="1.4.18  1.4.17"
list_builder "${tpl}" "${versions[@]}"

tpl="matio"
export versions="1.5.13  1.5.12  1.5.11  1.5.10  1.5.9  1.5.8  1.5.7  1.5.6  1.5.5  1.5.4  1.5.3  1.5.2"
list_builder "${tpl}" "${versions[@]}"

tpl="metis"
export versions="5.1.0  5.0.2  4.0.3"
list_builder "${tpl}" "${versions[@]}"

tpl="mpc"
export versions="1.1.0  1.0.3  1.0.2"
list_builder "${tpl}" "${versions[@]}"

tpl="mpfr"
export versions="4.0.1  4.0.0  3.1.6  3.1.5  3.1.4  3.1.3  3.1.2"
list_builder "${tpl}" "${versions[@]}"

tpl="mpich"
export versions="3.3  3.2.1  3.2  3.1.4  3.1.3  3.1.2  3.1.1  3.1  3.0.4"
list_builder "${tpl}" "${versions[@]}"

tpl="mumps"
export versions="5.1.1  5.0.2  5.0.1"
list_builder "${tpl}" "${versions[@]}"

tpl="mvapich2"
export versions="2.3rc2  2.3rc1  2.3a  2.3  2.2  2.1  2.0"
list_builder "${tpl}" "${versions[@]}"

tpl="ncurses"
export versions="6.1  6.0  5.9"
list_builder "${tpl}" "${versions[@]}"

tpl="netcdf"
export versions="1.5.13  1.5.12  1.5.11  1.5.10  1.5.9  1.5.8  1.5.7  1.5.6  1.5.5  1.5.4  1.5.3  1.5.2"
list_builder "${tpl}" "${versions[@]}"

tpl="netlib-lapack"
export versions="3.8.0  3.7.1  3.7.0  3.6.1  3.6.0  3.5.0  3.4.2  3.4.1  3.4.0  3.3.1"
list_builder "${tpl}" "${versions[@]}"

tpl="netlib-scalapack"
export versions="2.0.2  2.0.1  2.0.0"
list_builder "${tpl}" "${versions[@]}"

tpl="numactl"
export versions="2.0.12  2.0.11"
list_builder "${tpl}" "${versions[@]}"

tpl="openblas"
export versions="0.3.5  0.3.4  0.3.3  0.3.2  0.3.1  0.3.0  0.2.20"
list_builder "${tpl}" "${versions[@]}"

tpl="openmpi"
export versions="4.0.1  4.0.0  3.1.4  3.1.3  3.1.2  3.1.1  3.1.0  3.0.4  3.0.3  3.0.2  3.0.1  3.0.0  2.1.6"
list_builder "${tpl}" "${versions[@]}"

tpl="openspeedshop"
export versions="2.4.0  2.3.1.5  2.3.1.4  2.3.1.3"
list_builder "${tpl}" "${versions[@]}"

tpl="openssl"
export versions="1.1.1b  1.1.1   1.1.0i  1.1.0e  1.1.0c  1.0.2p  1.0.2n  1.0.2k  1.0.2i  1.0.2g  1.0.2e"
versions="${versions}  1.1.1a  1.1.0j  1.1.0g  1.1.0d  1.0.2r  1.0.2o  1.0.2m  1.0.2j  1.0.2h  1.0.2f  1.0.2d"
list_builder "${tpl}" "${versions[@]}"

tpl="otf2"
export versions="2.1.1  2.1  2.0  1.5.1  1.4  1.3.1  1.2.1"
list_builder "${tpl}" "${versions[@]}"

tpl="parmetis"
export versions="4.0.3  4.0.2"
list_builder "${tpl}" "${versions[@]}"

tpl="pdt"
export versions="3.25  3.24  3.23  3.22.1  3.22  3.21  3.20  3.19  3.18.1"
list_builder "${tpl}" "${versions[@]}"

tpl="perl"
export versions="5.28.0  5.26.2  5.25.11  5.24.1  5.22.4  5.22.3  5.22.2  5.22.1  5.22.0  5.20.3  5.18.4  5.16.3"
list_builder "${tpl}" "${versions[@]}"

tpl="petsc"
export versions="3.10.3  3.10.1  3.9.4  3.9.2  3.9.0  3.8.3  3.8.1"
versions="${versions} 3.10.4   3.10.2  3.10.0  3.9.3  3.9.1  3.8.4  3.8.2  3.8.0"
list_builder "${tpl}" "${versions[@]}"

tpl="pkgconf"
export versions="1.5.4  1.4.2  1.4.0  1.3.10  1.3.8"
list_builder "${tpl}" "${versions[@]}"

tpl="pkg-config"
export versions="0.29.2  0.29.1  0.28"
list_builder "${tpl}" "${versions[@]}"

tpl="pmix"
export versions="3.1.2  3.0.2  3.0.1  3.0.0  2.2.2  2.1.4  2.1.3  2.1.2  2.0.1  1.2.5"
list_builder "${tpl}" "${versions[@]}"

tpl="python"
export versions="3.7.2  3.7.1  3.7.0  3.6.8  3.6.7  3.6.6  3.6.5  3.6.4  3.6.3  3.6.2  3.6.1  3.6.0  3.5.2  3.5.1  3.5.0  3.4.3  3.3.6  3.2.6  3.1.5  2.7.16  2.7.15  2.7.14  2.7.13  2.7.12  2.7.11  2.7.10  2.7.9  2.7.8"
list_builder "${tpl}" "${versions[@]}"

tpl="py-enum34"
export versions="1.1.6"
list_builder "${tpl}" "${versions[@]}"

tpl="py-flake8"
export versions="3.7.7  3.5.0  3.0.4  2.5.4"
list_builder "${tpl}" "${versions[@]}"

tpl="py-functools32"
export versions="3.2.3-2"
list_builder "${tpl}" "${versions[@]}"

tpl="py-future"
export versions="0.16.0  0.15.2"
list_builder "${tpl}" "${versions[@]}"

tpl="py-gnuplot"
export versions="1.8"
list_builder "${tpl}" "${versions[@]}"

tpl="py-matplotlib"
export versions="3.0.2  3.0.0  2.2.3  2.2.2  2.0.2  2.0.0  1.5.3  1.5.1  1.4.3  1.4.2"
list_builder "${tpl}" "${versions[@]}"

tpl="py-pyflakes"
export versions="2.1.0  1.6.0  1.5.0  1.4.0  1.3.0  1.2.3  1.2.2  1.2.1  1.2.0  1.1.0  1.0.0"
list_builder "${tpl}" "${versions[@]}"

tpl="py-scipy"
export versions="1.2.1  1.1.0  1.0.0  0.19.1  0.19.0  0.18.1  0.17.0  0.15.1  0.15.0"
list_builder "${tpl}" "${versions[@]}"

tpl="py-setuptools"
export versions="40.8.0  40.4.3  40.2.0  39.2.0  39.0.1  35.0.2  34.4.1  34.2.0  25.2.0  20.7.0  20.6.7  20.5  19.2  18.1  16.0  11.3.1"
list_builder "${tpl}" "${versions[@]}"

tpl="py-six"
export versions="1.12.0  1.11.0  1.10.0  1.9.0  1.8.0"
list_builder "${tpl}" "${versions[@]}"

tpl="py-stevedore"
export versions="1.28.0"
list_builder "${tpl}" "${versions[@]}"

tpl="py-sympy"
export versions="1.3  1.1.1  1.0  0.7.6"
list_builder "${tpl}" "${versions[@]}"

tpl="py-virtualenv"
export versions="16.4.1  16.0.0  15.1.0  15.0.1  13.0.1  1.11.6"
list_builder "${tpl}" "${versions[@]}"

tpl="py-virtualenv-clone"
export versions="0.2.6"
list_builder "${tpl}" "${versions[@]}"

tpl="py-virtualenvwrapper"
export versions="4.8.2"
list_builder "${tpl}" "${versions[@]}"

tpl="py-xlsxwriter"
export versions="1.0.2"
list_builder "${tpl}" "${versions[@]}"

tpl="qhull"
export versions="2015.2  2012.1"
list_builder "${tpl}" "${versions[@]}"

tpl="qt"
export versions="5.11.3  5.11.2  5.10.0  5.9.1  5.9.0  5.8.0  5.7.1  5.7.0  5.5.1  5.4.2  5.4.0  5.3.2  5.2.1  4.8.6"
list_builder "${tpl}" "${versions[@]}"

tpl="rdma-core"
export versions="20  17.1  13"
list_builder "${tpl}" "${versions[@]}"

tpl="readline"
export versions="7.0  6.3"
list_builder "${tpl}" "${versions[@]}"

tpl="rhash"
export versions="1.3.5"
list_builder "${tpl}" "${versions[@]}"

tpl="ruby"
export versions="2.5.3  2.2.0"
list_builder "${tpl}" "${versions[@]}"

tpl="sqlite"
export versions="3.26.0"
list_builder "${tpl}" "${versions[@]}"

tpl="suite-sparse"
export versions="5.4.0 5.1.2 4.5.6  4.4.5  4.4.3  4.4.1  4.3.1  4.2.1  4.1.0  4.0.1"
versions="${versions} 5.1.2-beta2  4.6.0-beta  4.4.6  4.4.4  4.4.2  4.4.0  4.3.0  4.2.0  4.0.2  4.0.0"
list_builder "${tpl}" "${versions[@]}"

tpl="superlu"
export versions="5.2.1  4.3"
list_builder "${tpl}" "${versions[@]}"

tpl="superlu-dist"
export versions="6.1.0  6.0.0  5.4.0  5.3.0  5.2.2  5.2.1  5.1.3  5.1.2  5.1.0  5.0.0"
list_builder "${tpl}" "${versions[@]}"

tpl="tar"
export versions="1.31  1.30  1.29  1.28"
list_builder "${tpl}" "${versions[@]}"

tpl="texinfo"
export versions="6.5  6.3  6.0  5.2  5.1  5.0"
list_builder "${tpl}" "${versions[@]}"

tpl="tkl"
export versions="8.6.8  8.6.6  8.6.5  8.6.4  8.6.3  8.5.19"
list_builder "${tpl}" "${versions[@]}"

tpl="tk"
export versions="8.6.8  8.6.6  8.6.5  8.6.3"
list_builder "${tpl}" "${versions[@]}"

tpl="trilinos"
export versions="12.12.1  12.8.1  12.6.3  12.6.1  12.2.1  11.14.3  11.14.1"
versions="${versions} 12.14.1  12.10.1  12.6.4  12.6.2  12.4.2  12.0.1  11.14.2"
list_builder "${tpl}" "${versions[@]}"

tpl="ucx"
export versions="1.5.0  1.4.0  1.3.1  1.3.0  1.2.2  1.2.1"
list_builder "${tpl}" "${versions[@]}"

tpl="util-macros"
export versions="1.19.1  1.19.0"
list_builder "${tpl}" "${versions[@]}"

tpl="xz"
export versions="5.2.4  5.2.3  5.2.2  5.2.0"
list_builder "${tpl}" "${versions[@]}"

tpl="zip"
export versions="3.0"
list_builder "${tpl}" "${versions[@]}"

tpl="zlib"
export versions="1.2.11  1.2.8  1.2.3"
list_builder "${tpl}" "${versions[@]}"

tpl="zoltan"
export versions="3.83  3.8  3.6  3.3"
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
