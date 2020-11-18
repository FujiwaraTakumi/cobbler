#! /bin/bash
#
#
#

CUR_DIR=$(pwd)
WORK_DIR=$(cd "$(dirname "$0")"; pwd)

BOOTLOADERS_DIR="/var/lib/cobbler/loaders"
BOOTLOADERS_DIR_GRUB="${BOOTLOADERS_DIR}/grub"
cp -rf ${WORK_DIR}/*.efi ${BOOTLOADERS_DIR_GRUB}/
