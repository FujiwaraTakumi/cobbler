#!/usr/bin/env bash
#
#
# arch options:
#   x86_64
#   aarch64
#   mips64el
#

# $1    src path        /install/tftpboot/centos7u6_x86_64 (sync from [ftp.sims.com]/var/ftp/install/tftpboot)
# $2    distro name     CentOS7u6
# $3    kernel          vmlinuz
# $4    initrd          initrd.img
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

# $1    profile name    CentOS7u6
# $2    distro name     CentOS7u6
# $3    kernel options  ......
function ImportProfile() {
    local distro=$1
    local profile=$2
    local options=$3
    if [[ -z ${distro} ]] || [[ -z ${profile} ]]; then
        return 1
    fi
    cobbler profile add --name=${profile} --distro=${distro} --kernel-options="\"${options}\""
}

echo "IMPORT DISTRO / PROFILE ..."
echo "Begin at $(date "+%Y-%m-%d %H:%M:%S")"

## params
FTP_AD="ftp.sims.com"
PXE_AD="pxe.sims.com"

# cobbler
which cobbler
if [[ $? -ne 0 ]]; then
    exit 3
fi


#mkdir CentOS6u6
#mkdir CentOS7u6
#mkdir CentOS7u6_HYGON
#mkdir CentOS7u6_ORIGIN
#mkdir CentOS7u6_HYGON_ORIGIN
#mkdir CentOS7u4_DCU
#mkdir TencentMPT
#mkdir UOS20
#mkdir Hygon_UOS_V20_SP1_Server
#mkdir Hygon_UOS_V20_SP1_Server_NVME
#mkdir Hygon_UOS_V20_SP1_Desktop
#mkdir Hygon_KOS_V10_0430_Server
## X86_64 / AMD64
BaseDir="/install/tftpboot"
# CentOS 6.6
MIX_NAME="CentOS6u6"
ImportDistroX86_64 "CentOS6u6" "CentOS6u6" "vmlinuz_centos6u6" "initrd_centos6u6.img"
ImportProfile "CentOS6u6" "CentOS6u6" "ramdisk_size=65536 ks=nfs:${PXE_AD}:/install/ks_centos6u6_all.cfg true ip=dhcp ksdevice=link vga=791 nouveau.modeset=0"
# CentOS 7.6
MIX_NAME="CentOS7u6"
ImportDistroX86_64 "CentOS7u6" "CentOS7u6" "vmlinuz_centos7u6" "initrd_centos7u6.img"
ImportProfile "CentOS7u6" "CentOS7u6" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_uefi.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS 7.6 Hygon
MIX_NAME="CentOS7u6_HYGON"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos7u6_hygon" "initrd_centos7u6_hygon.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_hygon_ks_uefi.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6hygon/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS7.6 ORIGIN
MIX_NAME="CentOS7u6_ORIGIN"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_uefi_origin.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6_origin/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS7.6 Hygon ORIGIN
MIX_NAME="CentOS7u6_HYGON_ORIGIN"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_hygon_ks_origin.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6hygon_origin vga=791 scsi_mod.scan=sync inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS7.4 DCU
MIX_NAME="CentOS7u4_DCU"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos7u4" "mpt_output.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u4_hygon_patch12_uefi.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u4_hygon_patch10 true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# Tencent MPT
MIX_NAME="TencentMPT"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "intel_idle.max_cstate=1 intel_pstate=disable console=ttyS0,115200n1 console=tty0 net.ifnames=0 biosdevname=0"

# UOS 20
MIX_NAME="UOS20"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos20" "initrd.lz_uos20"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" " root=/dev/nfs nfsroot=172.16.0.2:/install/uos20 rw boot=live union=overlay livecd-installer locale=zh_CN --"
#
MIX_NAME="Hygon_UOS_V20_SP1_Server"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos_sp1" "initrd_uos_sp1.lz"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" " root=/dev/nfs nfsroot=172.16.0.2:/install/uos20 rw boot=live union=overlay livecd-installer locale=zh_CN --"
#
MIX_NAME="Hygon_UOS_V20_SP1_Server_NVME"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos20" "initrd.lz_uos20"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" " root=/dev/nfs nfsroot=172.16.0.2:/install/uos20 rw boot=live union=overlay livecd-installer locale=zh_CN --"
#
MIX_NAME="Hygon_UOS_V20_SP1_Desktop"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos20" "initrd.lz_uos20"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" " root=/dev/nfs nfsroot=172.16.0.2:/install/uos20 rw boot=live union=overlay livecd-installer locale=zh_CN --"
#
MIX_NAME="Hygon_KOS_V10_0430_Server"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos20" "initrd.lz_uos20"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" " root=/dev/nfs nfsroot=172.16.0.2:/install/uos20 rw boot=live union=overlay livecd-installer locale=zh_CN --"



## AARCH64
BaseDir="/install/tftpboot/aarch64"
# Phytium_UOS_V20_0307_Desktop Test
MIX_NAME="Phytium_UOS_V20_0307_Desktop_Test"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos20" "initrd.lz_uos20"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" " root=/dev/nfs nfsroot=172.16.0.2:/install/uos20 rw boot=live union=overlay livecd-installer locale=zh_CN --"




## MIPS64EL
BaseDir="/install/tftpboot/mips64el"
#Loongson_UOS_V20_SP1_Server Test
MIX_NAME="Loongson_UOS_V20_SP1_Server_Test"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos20" "initrd.lz_uos20"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" " root=/dev/nfs nfsroot=172.16.0.2:/install/uos20 rw boot=live union=overlay livecd-installer locale=zh_CN --"




