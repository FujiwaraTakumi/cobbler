#!/usr/bin/env bash
#
#

function importDistro() {
    local linux=$1
    local initrd=$2
}

function importProfile () {

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
CurDistroBase="${BaseDir}/centos7u6_x86_64"
cobbler distro add --name=CentOS7u6 --arch=x86_64 \
 --kernel="${CurDistroBase}/vmlinuz" --initrd="${CurDistroBase}/initrd.img"
cobbler profile add --name=CentOS7u6_SIMS --distro=CentOS7u6 \
 --kernel-options="inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_uefi.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"

# CentOS 7.6 Hygon
CurDistroBase="${BaseDir}/centos7u6hygon_x86_64"
cobbler distro add --name=CentOS7u6_HYGON --arch=x86_64 \
 --kernel="${CurDistroBase}/vmlinuz" --initrd="${CurDistroBase}/initrd.img"
cobbler profile add --name=CentOS7u6_HYGON_SIMS --distro=CentOS7u6_HYGON \
 --kernel-options="inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_hygon_ks_uefi.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6hygon/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"

# CentOS7.6 ORIGIN
CurDistroBase="${BaseDir}/centos7u6origin_x86_64"
cobbler distro add --name=CentOS7u6_ORIGIN --arch=x86_64 \
 --kernel="${CurDistroBase}/vmlinuz" --initrd="${CurDistroBase}/initrd.img"
cobbler profile add --name=CentOS7u6_ORIGIN --distro=CentOS7u6_ORIGIN \
 --kernel-options="inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_uefi_origin.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6_origin/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"






## AARCH64


## MIPS64EL




echo "End at $(date "+%Y-%m-%d %H:%M:%S")"
