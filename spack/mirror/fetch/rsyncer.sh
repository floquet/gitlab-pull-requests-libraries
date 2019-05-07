#! /bin/bash

printf '%s\n' "$(date) $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

function rsync_to_mirror() {
    echo "rsync -var ${dir_topa_mirror_spack}/${1}/. ${dir_kt_mirror_spack}/${1}/."
          rsync -var ${dir_topa_mirror_spack}/${1}/. ${dir_kt_mirror_spack}/${1}/.
}

export dir_topa_mirror_spack="/scratch/users/dantopa/repos/gitlab/topa-mirror-spack"
export   dir_kt_mirror_spack="/usr/projects/draco/vendors/spack.mirror" # yellow hpc

export master=""
export master="${master} pkgconf xz libxml2 numactl json-c libevent"

for m in ${master}; do
    rsync_to_mirror ${m}
done

# dantopa@cn120:fetch $ date
# Mon Apr  1 18:49:11 MDT 2019

# dantopa@cn120:fetch $ pwd
# /scratch/users/dantopa/repos/gitlab/pull-requests/problems/mirror/fetch

# dantopa@cn120:fetch $ source rsyncer.sh
# Mon Apr  1 18:49:16 MDT 2019 rsyncer.sh
# rsync -var /scratch/users/dantopa/repos/gitlab/topa-mirror-spack/pkgconf/. /usr/projects/draco/vendors/spack.mirror/pkgconf/.
# sending incremental file list
# rsync: chgrp "/usr/projects/draco/vendors/spack.mirror/pkgconf/." failed: Operation not permitted (1)
# ./
# pkgconf-1.3.10.tar.xz
# pkgconf-1.3.8.tar.xz
# pkgconf-1.4.0.tar.xz
# pkgconf-1.4.2.tar.xz
# pkgconf-1.5.4.tar.xz
# pkgconf-1.6.0.tar.xz
#
# sent 1,697,242 bytes  received 239 bytes  3,394,962.00 bytes/sec
# total size is 1,696,372  speedup is 1.00
# rsync error: some files/attrs were not transferred (see previous errors) (code 23) at main.c(1178) [sender=3.1.2]
# rsync -var /scratch/users/dantopa/repos/gitlab/topa-mirror-spack/xz/. /usr/projects/draco/vendors/spack.mirror/xz/.
# sending incremental file list
# rsync: chgrp "/usr/projects/draco/vendors/spack.mirror/xz/." failed: Operation not permitted (1)
# ./
# xz-5.2.0.tar.bz2
# xz-5.2.2.tar.bz2
# xz-5.2.3.tar.bz2
# xz-5.2.4.tar.bz2
#
# sent 4,874,039 bytes  received 196 bytes  3,249,490.00 bytes/sec
# total size is 4,872,529  speedup is 1.00
# rsync error: some files/attrs were not transferred (see previous errors) (code 23) at main.c(1178) [sender=3.1.2]
# rsync -var /scratch/users/dantopa/repos/gitlab/topa-mirror-spack/libxml2/. /usr/projects/draco/vendors/spack.mirror/libxml2/.
# sending incremental file list
# rsync: chgrp "/usr/projects/draco/vendors/spack.mirror/libxml2/." failed: Operation not permitted (1)
# ./
# libxml2-2.7.8.tar.gz
# libxml2-2.9.2.tar.gz
# libxml2-2.9.4.tar.gz
# libxml2-2.9.8.tar.gz
#
# sent 21,176,226 bytes  received 201 bytes  14,117,618.00 bytes/sec
# total size is 21,170,726  speedup is 1.00
# rsync error: some files/attrs were not transferred (see previous errors) (code 23) at main.c(1178) [sender=3.1.2]
# rsync -var /scratch/users/dantopa/repos/gitlab/topa-mirror-spack/numactl/. /usr/projects/draco/vendors/spack.mirror/numactl/.
# sending incremental file list
# ./
# numactl-2.0.11.tar.gz
# numactl-2.0.12.tar.gz
#
# sent 190,596 bytes  received 57 bytes  381,306.00 bytes/sec
# total size is 190,345  speedup is 1.00
# rsync -var /scratch/users/dantopa/repos/gitlab/topa-mirror-spack/json-c/. /usr/projects/draco/vendors/spack.mirror/json-c/.
# sending incremental file list
# ./
# json-c-0.11.tar.gz
# json-c-0.12.1.tar.gz
# json-c-0.13.1.tar.gz
#
# sent 1,732,464 bytes  received 76 bytes  3,465,080.00 bytes/sec
# total size is 1,731,774  speedup is 1.00
# rsync -var /scratch/users/dantopa/repos/gitlab/topa-mirror-spack/libevent/. /usr/projects/draco/vendors/spack.mirror/libevent/.
# sending incremental file list
# rsync: chgrp "/usr/projects/draco/vendors/spack.mirror/libevent/." failed: Operation not permitted (1)
# ./
# libevent-2.0.19.tar.gz
# libevent-2.0.20.tar.gz
# libevent-2.0.21.tar.gz
# libevent-2.0.22.tar.gz
# libevent-2.1.8.tar.gz
#
# sent 4,422,102 bytes  received 221 bytes  8,844,646.00 bytes/sec
# total size is 4,420,651  speedup is 1.00
# rsync error: some files/attrs were not transferred (see previous errors) (code 23) at main.c(1178) [sender=3.1.2]
# dantopa@cn120:fetch $ gomirror
# /usr/projects/draco/vendors/spack.mirror
# dantopa@cn120:spack.mirror $ cd libevent/
# dantopa@cn120:libevent $ lss
# total 6.5M
# drwxrwxr-x   2 kellyt  user_contrib   199 Apr  1 18:49 .
# drwxrwsr-x 283 kellyt  user_contrib  7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa dantopa       824K Apr  1 18:17 libevent-2.0.19.tar.gz
# -rw-rw-r--   1 dantopa dantopa       826K Apr  1 18:17 libevent-2.0.20.tar.gz
# -rw-rw-r--   1 dantopa dantopa       831K Apr  1 18:17 libevent-2.0.21.tar.gz
# -rw-rw-r--   1 dantopa dantopa       835K Apr  1 18:17 libevent-2.0.22.tar.gz
# -rw-rw-r--   1 dantopa dantopa      1003K Apr  1 18:17 libevent-2.1.8.tar.gz
# dantopa@cn120:libevent $ cd ../numactl
# dantopa@cn120:numactl $ lss
# total 746K
# drwxrwxr-x   2 dantopa dantopa        78 Apr  1 18:43 .
# drwxrwsr-x 283 kellyt  user_contrib 7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa dantopa       97K Mar 15 21:05 numactl-2.0.11.tar.gz
# -rw-rw-r--   1 dantopa dantopa       90K Mar 15 21:05 numactl-2.0.12.tar.gz
# dantopa@cn120:numactl $ cd  ../pkgconf
# dantopa@cn120:pkgconf $ lss
# total 3.5M
# drwxrwxr-x   2 kellyt  user_contrib  229 Apr  1 18:49 .
# drwxrwsr-x 283 kellyt  user_contrib 7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa dantopa      267K Mar 15 21:06 pkgconf-1.3.10.tar.xz
# -rw-rw-r--   1 dantopa dantopa      267K Mar 15 21:06 pkgconf-1.3.8.tar.xz
# -rw-rw-r--   1 dantopa dantopa      279K Mar 15 21:06 pkgconf-1.4.0.tar.xz
# -rw-rw-r--   1 dantopa dantopa      279K Mar 15 21:05 pkgconf-1.4.2.tar.xz
# -rw-rw-r--   1 dantopa dantopa      284K Mar 15 21:05 pkgconf-1.5.4.tar.xz
# -rw-rw-r--   1 dantopa dantopa      284K Apr  1 18:40 pkgconf-1.6.0.tar.xz
# dantopa@cn120:pkgconf $ groups
# dantopa vglusers xcontrol artab dacodes eapdev user_contrib ccs2 lapdev eapdevucni eapucni darwin-pet
# dantopa@cn120:pkgconf $ chown :user_contrib pkgconf-1.*
# dantopa@cn120:pkgconf $ lss
# total 3.5M
# drwxrwxr-x   2 kellyt  user_contrib  229 Apr  1 18:49 .
# drwxrwsr-x 283 kellyt  user_contrib 7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa user_contrib 267K Mar 15 21:06 pkgconf-1.3.10.tar.xz
# -rw-rw-r--   1 dantopa user_contrib 267K Mar 15 21:06 pkgconf-1.3.8.tar.xz
# -rw-rw-r--   1 dantopa user_contrib 279K Mar 15 21:06 pkgconf-1.4.0.tar.xz
# -rw-rw-r--   1 dantopa user_contrib 279K Mar 15 21:05 pkgconf-1.4.2.tar.xz
# -rw-rw-r--   1 dantopa user_contrib 284K Mar 15 21:05 pkgconf-1.5.4.tar.xz
# -rw-rw-r--   1 dantopa user_contrib 284K Apr  1 18:40 pkgconf-1.6.0.tar.xz
# dantopa@cn120:pkgconf $ cd ../numactl/
# dantopa@cn120:numactl $ lss
# total 746K
# drwxrwxr-x   2 dantopa dantopa        78 Apr  1 18:43 .
# drwxrwsr-x 283 kellyt  user_contrib 7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa dantopa       97K Mar 15 21:05 numactl-2.0.11.tar.gz
# -rw-rw-r--   1 dantopa dantopa       90K Mar 15 21:05 numactl-2.0.12.tar.gz
# dantopa@cn120:numactl $ chown :user_contrib numactl-2.0.1*
# dantopa@cn120:numactl $ cd ../libevent/
# dantopa@cn120:libevent $ lss
# total 6.5M
# drwxrwxr-x   2 kellyt  user_contrib   199 Apr  1 18:49 .
# drwxrwsr-x 283 kellyt  user_contrib  7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa dantopa       824K Apr  1 18:17 libevent-2.0.19.tar.gz
# -rw-rw-r--   1 dantopa dantopa       826K Apr  1 18:17 libevent-2.0.20.tar.gz
# -rw-rw-r--   1 dantopa dantopa       831K Apr  1 18:17 libevent-2.0.21.tar.gz
# -rw-rw-r--   1 dantopa dantopa       835K Apr  1 18:17 libevent-2.0.22.tar.gz
# -rw-rw-r--   1 dantopa dantopa      1003K Apr  1 18:17 libevent-2.1.8.tar.gz
# dantopa@cn120:libevent $ chown :user_contrib libevent-2.*
# dantopa@cn120:libevent $ cd ../xz/
# dantopa@cn120:xz $ lss
# total 6.9M
# drwxrwxr-x   2 kellyt  user_contrib  136 Apr  1 18:49 .
# drwxrwsr-x 283 kellyt  user_contrib 7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa dantopa      1.2M Mar 15 23:09 xz-5.2.0.tar.bz2
# -rw-rw-r--   1 dantopa dantopa      1.2M Mar 15 23:09 xz-5.2.2.tar.bz2
# -rw-rw-r--   1 dantopa dantopa      1.2M Mar 15 23:09 xz-5.2.3.tar.bz2
# -rw-rw-r--   1 dantopa dantopa      1.3M Mar 15 23:09 xz-5.2.4.tar.bz2
# dantopa@cn120:xz $ chown :user_contrib xz*
# dantopa@cn120:xz $ cd ../libxml2/
# dantopa@cn120:libxml2 $ lss
# total 28M
# drwxrwxr-x   2 kellyt  user_contrib  152 Apr  1 18:49 .
# drwxrwsr-x 283 kellyt  user_contrib 7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa dantopa      4.7M Mar 15 21:02 libxml2-2.7.8.tar.gz
# -rw-rw-r--   1 dantopa dantopa      5.2M Mar 15 21:02 libxml2-2.9.2.tar.gz
# -rw-rw-r--   1 dantopa dantopa      5.2M Mar 15 21:02 libxml2-2.9.4.tar.gz
# -rw-rw-r--   1 dantopa dantopa      5.3M Mar 15 21:02 libxml2-2.9.8.tar.gz
# dantopa@cn120:libxml2 $ chown :user_contrib libxml2-2.*
# dantopa@cn120:libxml2 $ lss
# total 28M
# drwxrwxr-x   2 kellyt  user_contrib  152 Apr  1 18:49 .
# drwxrwsr-x 283 kellyt  user_contrib 7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa user_contrib 4.7M Mar 15 21:02 libxml2-2.7.8.tar.gz
# -rw-rw-r--   1 dantopa user_contrib 5.2M Mar 15 21:02 libxml2-2.9.2.tar.gz
# -rw-rw-r--   1 dantopa user_contrib 5.2M Mar 15 21:02 libxml2-2.9.4.tar.gz
# -rw-rw-r--   1 dantopa user_contrib 5.3M Mar 15 21:02 libxml2-2.9.8.tar.gz
# dantopa@cn120:libxml2 $ cd ../numactl
# dantopa@cn120:numactl $ lss
# total 746K
# drwxrwxr-x   2 dantopa dantopa        78 Apr  1 18:43 .
# drwxrwsr-x 283 kellyt  user_contrib 7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa user_contrib  97K Mar 15 21:05 numactl-2.0.11.tar.gz
# -rw-rw-r--   1 dantopa user_contrib  90K Mar 15 21:05 numactl-2.0.12.tar.gz
# dantopa@cn120:numactl $ cd ../json-c/
# dantopa@cn120:json-c $ kss
# bash: kss: command not found
# dantopa@cn120:json-c $ lss
# total 2.7M
# drwxrwxr-x   2 dantopa dantopa       112 Apr  1 18:44 .
# drwxrwsr-x 283 kellyt  user_contrib 7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa dantopa      545K Mar 15 23:07 json-c-0.11.tar.gz
# -rw-rw-r--   1 dantopa dantopa      523K Mar 15 23:09 json-c-0.12.1.tar.gz
# -rw-rw-r--   1 dantopa dantopa      625K Mar 15 23:09 json-c-0.13.1.tar.gz
# dantopa@cn120:json-c $ chown :user_contrib json-c-0.1*
# dantopa@cn120:json-c $ cd ../libevent/
# dantopa@cn120:libevent $ lss
# total 6.5M
# drwxrwxr-x   2 kellyt  user_contrib   199 Apr  1 18:49 .
# drwxrwsr-x 283 kellyt  user_contrib  7.2K Feb 28 15:27 ..
# -rw-rw-r--   1 dantopa user_contrib  824K Apr  1 18:17 libevent-2.0.19.tar.gz
# -rw-rw-r--   1 dantopa user_contrib  826K Apr  1 18:17 libevent-2.0.20.tar.gz
# -rw-rw-r--   1 dantopa user_contrib  831K Apr  1 18:17 libevent-2.0.21.tar.gz
# -rw-rw-r--   1 dantopa user_contrib  835K Apr  1 18:17 libevent-2.0.22.tar.gz
# -rw-rw-r--   1 dantopa user_contrib 1003K Apr  1 18:17 libevent-2.1.8.tar.gz
# dantopa@cn120:libevent $ chown :user_contrib libevent-2.*
# dantopa@cn120:libevent $
#
# https://stackoverflow.com/questions/11131477/how-to-change-the-owner-for-a-rsync
