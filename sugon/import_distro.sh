#!/usr/bin/env bash
#
#
# arch options:
#   x86_64
#   aarch64
#   mips64el
#

function ImportDistroX86_64() {
    local srcdir=$1
    local distro=$2
    local linux=$3
    local initrd=$4
    CurDistroBase="${BaseDir}/${srcdir}"
    cobbler distro add --name=${distro} --arch=x86_64 --kernel="${CurDistroBase}/${linux}" --initrd="${CurDistroBase}/${initrd}"
}

function ImportDistroAarch64() {
    local srcdir=$1
    local distro=$2
    local linux=$3
    local initrd=$4
    CurDistroBase="${BaseDir}/${srcdir}"
    cobbler distro add --name=${distro} --arch=aarch64 --kernel="${CurDistroBase}/${linux}" --initrd="${CurDistroBase}/${initrd}"
}

function ImportDistroMips64el() {
    local srcdir=$1
    local distro=$2
    local linux=$3
    local initrd=$4
    CurDistroBase="${BaseDir}/${srcdir}"
    cobbler distro add --name=${distro} --arch=mips64el --kernel="${CurDistroBase}/${linux}" --initrd="${CurDistroBase}/${initrd}"
}

function ImportProfile() {
    local distro=$1
    local profile=$2
    local options=$3
    cobbler profile add --name=${profile} --distro=${distro} --kernel-options="\"${options}\""
}

echo "IMPORT DISTRO / PROFILE ..."
echo "Begin at $(date "+%Y-%m-%d %H:%M:%S")"

## params
BaseDir="/install/tftpboot"
FTP_AD="ftp.sims.com"
PXE_AD="pxe.sims.com"


# cobbler
which cobbler
if [[ $? -ne 0 ]]; then
    exit 3
fi

## X86_64 / AMD64
# CentOS 7.6
ImportDistroX86_64 "centos7u6_x86_64" "CentOS7u6" "vmlinuz" "initrd.img"
ImportProfile "CentOS7u6" "CentOS7u6" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_uefi.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS 7.6 Hygon
ImportDistroX86_64 "centos7u6hygon_x86_64" "CentOS7u6_HYGON" "vmlinuz" "initrd.img"
ImportProfile "CentOS7u6_HYGON" "CentOS7u6_HYGON" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_hygon_ks_uefi.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6hygon/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS7.6 ORIGIN
ImportDistroX86_64 "centos7u6origin_x86_64" "CentOS7u6_ORIGIN" "vmlinuz" "initrd.img"
ImportProfile "CentOS7u6_ORIGIN" "CentOS7u6_ORIGIN" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_uefi_origin.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6_origin/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS7.4 DCU
ImportDistroX86_64 "centos7u4dcu_x86_64" "CentOS7u4_DCU" "vmlinuz" "initrd.img"
ImportProfile "CentOS7u4_DCU" "CentOS7u4_DCU" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u4_hygon_patch12_uefi.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u4_hygon_patch10 true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"





## AARCH64


## MIPS64EL




echo "End at $(date "+%Y-%m-%d %H:%M:%S")"
