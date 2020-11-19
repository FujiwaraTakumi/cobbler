#! /bin/bash
#
#
#

CUR_DIR=$(pwd)
WORK_DIR=$(cd "$(dirname "$0")"; pwd)


TFTP_BOOT="/var/lib/tftpboot"
cd ${TFTP_BOOT}

# x86_64
ln -s  ./grub uefi

# arm64 / mips64
mkdir grub2
ln -s ../grub grub2/lx
ln -s ../grub grub2/ft


cd ${CUR_DIR}
