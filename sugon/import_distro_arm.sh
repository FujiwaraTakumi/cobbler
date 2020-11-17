############################################################################
# $1    src path        /install/tftpboot/centos7u6_x86_64 (sync from [ftp.sims.com]/var/ftp/install/tftpboot)
# $2    distro name     CentOS7u6
# $3    kernel          vmlinuz
# $4    initrd          initrd.img
############################################################################
# $1    profile name    CentOS7u6
# $2    distro name     CentOS7u6
# $3    kernel options  ......

#
MIX_NAME="Phytium_UOS_V20_0307_Desktop_Test"
ImportDistroX86_64 "uos_0307_desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/uos_0307_desktop"
#
MIX_NAME="Phytium_UOS_V20_SP1_Desktop"
ImportDistroX86_64 "uos_sp1_desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/uos_sp1_desktop"
#
MIX_NAME="Phytium_UOS_V20_SP1_Server_Test"
ImportDistroX86_64 "uos_sp1_server_test" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/uos_sp1_server_test"
#
MIX_NAME="Phytium_UOS_V20_SP1_Server"
ImportDistroX86_64 "uos_sp1_server" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/uos_sp1_server"
#
MIX_NAME="Phytium_UOS_V20_SP2U1_Desktop"
ImportDistroX86_64 "Phytium_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/Phytium_UOS_V20_SP2U1_Desktop"
#
MIX_NAME="Phytium_Kylin_V4_SP4_J1_Desktop"
ImportDistroX86_64 "kylin_sp4_J1/casper" "${MIX_NAME}" "uImage" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper only-ubiquity netboot=nfs nfsroot=${PXE_AD}:/install/ft/kylin_sp4_J1/ rootwait ro locale=zh_CN KEYBOARDTYPE=pc KEYTABLE=us ignore_uuid splash audit=0 "
#
MIX_NAME="Phytium_KOS_V10_0429_Desktop"
ImportDistroX86_64 "kos_0429_desktop" "${MIX_NAME}" "Image" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "loglevel=7 console=ttyAMA0,115200 boot=casper only-ubiquity locale=zh_ZN audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/ft/kos_0429_desktop/ automatic-ubiquity url=http://${FTP_AD}/http/ft/kos_0429_desktop/auto-preseed.cfg"
#
MIX_NAME="Phytium_Kylin_V4_SP4_Z1_0530_Desktop_BaseV10"
ImportDistroX86_64 "kylin_desktop_sp4_0530_Z1" "${MIX_NAME}" "Image" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper only-ubiquity locale=zh_CN quiet splash audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/ft/kylin_desktop_sp4_0530_Z1/ automatic-ubiquity url=http://${FTP_AD}/http/ft/kylin_desktop_sp4_0530_Z1/auto-preseed.cfg"
#
MIX_NAME="Phytium_Kylin_V10_0710_Desktop"
ImportDistroX86_64 "Phytium_Kylin_V10_0710_Desktop" "${MIX_NAME}" "Image" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper only-ubiquity locale=en_US audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/ft/Phytium_Kylin_V10_0710_Desktop/ automatic-ubiquity url=http://${FTP_AD}/http/ft/Phytium_Kylin_V10_0710_Desktop/auto-preseed.cfg"
#
MIX_NAME="TJSFJ_Phytium_Kylin_V10_0710_Desktop"
ImportDistroX86_64 "TJSFJ_Phytium_Kylin_V10_0710_Desktop" "${MIX_NAME}" "Image" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper only-ubiquity locale=en_US audit=0 netboot=nfs nfsroot=${PXE_AD}:/data/install/ft/TJSFJ_Phytium_Kylin_V10_0710_Desktop/ automatic-ubiquity url=http://${FTP_AD}/http/ft/TJSFJ_Phytium_Kylin_V10_0710_Desktop/auto-preseed.cfg"
#
MIX_NAME="TJNKQZF_Phytium_Kylin_V10_0710_Desktop"
ImportDistroX86_64 "TJNKQZF_Phytium_Kylin_V10_0710_Desktop" "${MIX_NAME}" "Image" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper only-ubiquity locale=en_US audit=0 netboot=nfs nfsroot=${PXE_AD}:/data/install/ft/TJNKQZF_Phytium_Kylin_V10_0710_Desktop/ automatic-ubiquity url=http://${FTP_AD}/http/ft/TJNKQZF_Phytium_Kylin_V10_0710_Desktop/auto-preseed.cfg"
#
MIX_NAME="TJDLQZF_Phytium_Kylin_V10_0710_Desktop"
ImportDistroX86_64 "TJDLQZF_Phytium_Kylin_V10_0710_Desktop" "${MIX_NAME}" "Image" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper only-ubiquity locale=en_US audit=0 netboot=nfs nfsroot=${PXE_AD}:/data/install/ft/TJDLQZF_Phytium_Kylin_V10_0710_Desktop/ automatic-ubiquity url=http://${FTP_AD}/http/ft/TJDLQZF_Phytium_Kylin_V10_0710_Desktop/auto-preseed.cfg"
#
MIX_NAME="XHB2003580_HSBMJYJ_Phytium_UOS_V20_SP2U1_Desktop"
ImportDistroX86_64 "XHB2003580_HSBMJYJ_Phytium_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/XHB2003580_HSBMJYJ_Phytium_UOS_V20_SP2U1_Desktop/"
#
MIX_NAME="XHB2003490_Phytium_UOS_V20_SP2U1_0910_Desktop"
ImportDistroX86_64 "XHB2003490_Phytium_UOS_V20_SP2U1_0910_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/XHB2003490_Phytium_UOS_V20_SP2U1_0910_Desktop/"
#
MIX_NAME="XAH2002860_Phytium_UOS_V20_SP2U1_Desktop"
ImportDistroX86_64 "XAH2002860_Phytium_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/XAH2002860_Phytium_UOS_V20_SP2U1_Desktop/"
#
MIX_NAME="XAH2002860_Phytium_UOS_V20_SP2U1_0926_Desktop"
ImportDistroX86_64 "XAH2002860_Phytium_UOS_V20_SP2U1_0926_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/XAH2002860_Phytium_UOS_V20_SP2U1_0926_Desktop/"
#
MIX_NAME="XCQ2001000_Phytium_UOS_V20_SP2U1_Desktop"
ImportDistroX86_64 "XCQ2001000_Phytium_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/XCQ2001000_Phytium_UOS_V20_SP2U1_Desktop/"
#
MIX_NAME="XHB2004010_Phytium_UOS_V20_SP2U1_Desktop"
ImportDistroX86_64 "XHB2004010_Phytium_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/XHB2004010_Phytium_UOS_V20_SP2U1_Desktop/"
#
MIX_NAME="XHB200488_Phytium_UOS_V20_SP2U2_Desktop"
ImportDistroX86_64 "XHB200488_Phytium_UOS_V20_SP2U2_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/XHB200488_Phytium_UOS_V20_SP2U2_Desktop/"
#
MIX_NAME="XHB200517_Phytium_UOS_V20_SP2U1_Desktop"
ImportDistroX86_64 "XHB200517_Phytium_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=${PXE_AD}:/install/ft/XHB200517_Phytium_UOS_V20_SP2U1_Desktop/"

