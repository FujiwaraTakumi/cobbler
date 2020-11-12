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
    echo "import distro ${distro} ..."
    DisExist=$(cobbler distro find --name=${distro} | grep -c "${distro}")
    if [[ ${DisExist} -eq 1 ]]; then
        echo "distro ${distro} has imported."
        return 0
    fi
    CurDistroBase="${BaseDir}/${srcdir}"
    cobbler distro add --name=${distro} --arch=x86_64 --kernel="${CurDistroBase}/${linux}" --initrd="${CurDistroBase}/${initrd}"
    echo "done."
}

function ImportDistroAarch64() {
    local srcdir=$1
    local distro=$2
    local linux=$3
    local initrd=$4
    echo "import distro ${distro} ..."
    DisExist=$(cobbler distro find --name=${distro} | grep -c "${distro}")
    if [[ ${DisExist} -eq 1 ]]; then
        echo "distro ${distro} has imported."
        return 0
    fi
    CurDistroBase="${BaseDir}/${srcdir}"
    cobbler distro add --name=${distro} --arch=aarch64 --kernel="${CurDistroBase}/${linux}" --initrd="${CurDistroBase}/${initrd}"
    echo "done."
}

function ImportDistroMips64el() {
    local srcdir=$1
    local distro=$2
    local linux=$3
    local initrd=$4
    echo "import distro ${distro} ..."
    DisExist=$(cobbler distro find --name=${distro} | grep -c "${distro}")
    if [[ ${DisExist} -eq 1 ]]; then
        echo "distro ${distro} has imported."
        return 0
    fi
    CurDistroBase="${BaseDir}/${srcdir}"
    cobbler distro add --name=${distro} --arch=mips64el --kernel="${CurDistroBase}/${linux}" --initrd="${CurDistroBase}/${initrd}"
    echo "done."
}

# $1    profile name    CentOS7u6
# $2    distro name     CentOS7u6
# $3    kernel options  ......
function ImportProfile() {
    local distro=$1
    local profile=$2
    local options=$3
    echo "import profile ${profile} ..."
    if [[ -z ${distro} ]] || [[ -z ${profile} ]]; then
        return 1
    fi
    DisExist=$(cobbler profile find --name=${profile} | grep -c "${profile}")
    if [[ ${DisExist} -eq 1 ]]; then
        echo "profile ${profile} has imported."
        return 0
    fi
    cobbler profile add --name=${profile} --distro=${distro} --kernel-options="${options}"
    echo "done."
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

## X86_64 / AMD64
BaseDir="/install/tftpboot/x86_64"
source ./import_distro_x86.sh

## AARCH64
#BaseDir="/install/tftpboot/aarch64"
BaseDir="/install/tftpboot/ft"
source ./import_distro_arm.sh

## MIPS64EL
#BaseDir="/install/tftpboot/mips64el"
BaseDir="/install/tftpboot/lx"
source ./import_distro_mips.sh
