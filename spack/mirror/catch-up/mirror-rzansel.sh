#! /bin/bash
printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export dir_mirror="/usr/workspace/wsrzc/topa1/spack-home/mirror"

cd ${dir_mirror}/openmpi
wget http://www.open-mpi.org/software/ompi/v4.0/downloads/openmpi-4.0.1.tar.bz2 &
wget http://www.open-mpi.org/software/ompi/v3.1/downloads/openmpi-3.1.4.tar.bz2 &
wget http://www.open-mpi.org/software/ompi/v3.0/downloads/openmpi-3.0.4.tar.bz2 &
wget http://www.open-mpi.org/software/ompi/v2.1/downloads/openmpi-2.1.6.tar.bz2 &

cd ${dir_mirror}/ucx
wget https://github.com/openucx/ucx/releases/download/v1.5.0/ucx-1.5.0.tar.gz &
wget https://github.com/openucx/ucx/releases/download/v1.2.2/ucx-1.2.2.tar.gz &

cd ${dir_mirror}/pmix
wget https://github.com/pmix/pmix/releases/download/v3.1.2/pmix-3.1.2.tar.bz2 &
wget https://github.com/pmix/pmix/releases/download/v2.2.2/pmix-2.2.2.tar.bz2 &
wget https://github.com/pmix/pmix/releases/download/v2.1.4/pmix-2.1.4.tar.bz2 &

cd ${dir_mirror}/hwloc
wget http://www.open-mpi.org/software/hwloc/v2.0/downloads/hwloc-2.0.2.tar.gz &
wget http://www.open-mpi.org/software/hwloc/v1.11/downloads/hwloc-1.11.11.tar.gz &
wget http://www.open-mpi.org/software/hwloc/v1.9/downloads/hwloc-1.9.tar.gz &

cd ${dir_mirror}/pkgconf
wget http://distfiles.dereferenced.org/pkgconf/pkgconf-1.6.0.tar.xz &
wget http://distfiles.dereferenced.org/pkgconf/pkgconf-1.5.4.tar.xz &

cd ${dir_mirror}/libnl
wget https://github.com/thom311/libnl/releases/download/libnl3_3_0/libnl-3.3.0.tar.gz &
wget https://github.com/thom311/libnl/releases/download/libnl3_3_0/libnl-3.2.25.tar.gz &

cd ${dir_mirror}/cmake
wget https://github.com/Kitware/CMake/releases/download/v3.14.2/cmake-3.14.2.tar.gz &
wget https://github.com/Kitware/CMake/releases/download/v3.14.1/cmake-3.14.1.tar.gz &
wget https://github.com/Kitware/CMake/releases/download/v3.14.0/cmake-3.14.0.tar.gz &
wget https://github.com/Kitware/CMake/releases/download/v3.13.4/cmake-3.13.4.tar.gz &
wget https://github.com/Kitware/CMake/releases/download/v3.13.3/cmake-3.13.3.tar.gz &
wget https://github.com/Kitware/CMake/releases/download/v3.13.2/cmake-3.13.2.tar.gz &
wget https://github.com/Kitware/CMake/releases/download/v3.13.1/cmake-3.13.1.tar.gz &
wget https://github.com/Kitware/CMake/releases/download/v3.13.0/cmake-3.13.0.tar.gz &
