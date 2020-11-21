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
MIX_NAME="Loongson_UOS_V20_SP1_Server_Test"
ImportDistroMips64el "uos_sp1_server_test" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/uos_sp1_server_test splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="Loongson_RAID_Configuration"
ImportDistroMips64el "" "${MIX_NAME}" "vmlinuz" "initrd-raid.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty quiet"
#
MIX_NAME="Loongson_UOS_V20_SP1_Server"
ImportDistroMips64el "uos_sp1_server" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/uos_sp1_server splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="Loongson_UOS_V20_SP1_Desktop"
ImportDistroMips64el "uos_sp1_desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/uos_sp1_desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="Loongson_UOS_V20_SP1_Desktop_S3_Disable"
ImportDistroMips64el "uos_sp1_desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/uos_sp1_desktop_s3_disable splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="Loongson_UOS_V20_SP1_Desktop_NVME"
ImportDistroMips64el "uos_sp1_desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/uos_sp1_desktop_nvme splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="Loongson_UOS_V20_SP1_Desktop_NVME_S3_Disable"
ImportDistroMips64el "uos_sp1_desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/uos_sp1_desktop_nvme_s3_disable splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="Loongson_UOS_V20_0306_Desktop_Test"
ImportDistroMips64el "uos_0306_desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/uos_0306_desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="Loongson_KOS_V10_0429_Desktop"
ImportDistroMips64el "kos_0429_desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/kos_0429_desktop/ automatic-ubiquity url=http://${FTP_AD}/http/lx/kos_0429_desktop/auto-preseed.cfg"
#
MIX_NAME="Loongson_KOS_V10_0825_Server"
ImportDistroMips64el "Loongson_KOS_V10_0825_Server" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ip=dhcp inst.repo=nfs:172.16.0.3:/install/lx/Loongson_KOS_V10_0825_Server rdloaddriver=ahci rdloaddriver=megaraid_sas inst.ks=nfs:172.16.0.3:/install/lx/Loongson_KOS_V10_0825_Server/ks.cfg"
#
MIX_NAME="Loongson_KOS_V10_0825_Server_Test"
ImportDistroMips64el "Loongson_KOS_V10_0825_Server" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ip=dhcp inst.repo=nfs:172.16.0.3:/install/lx/Loongson_KOS_V10_0825_Server_Test rdloaddriver=ahci rdloaddriver=megaraid_sas inst.ks=nfs:172.16.0.3:/install/lx/Loongson_KOS_V10_0825_Server_Test/ks.cfg"
#
MIX_NAME="CQBSQ_Loongson_NeoKylin_V7_0701_Desktop"
ImportDistroMips64el "CQBSQ_Loongson_NeoKylin_V7_0701_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper only-ubiquity locale=en_US audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/CQBSQ_Loongson_NeoKylin_V7_0701_Desktop/ automatic-ubiquity url=http://${FTP_AD}/http/lx/CQBSQ_Loongson_NeoKylin_V7_0701_Desktop/auto-preseed.cfg"
#
MIX_NAME="AHSRD_loongson_kylin_v10_0825_server"
ImportDistroMips64el "AHSRD_loongson_kylin_v10_0825_server" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ip=dhcp inst.repo=nfs:172.16.0.3:/install/lx/AHSRD_loongson_kylin_v10_0825_server inst.ks=nfs:172.16.0.3:/install/lx/AHSRD_loongson_kylin_v10_0825_server/ks.cfg"
#
MIX_NAME="XAH2002740-690-600_loongson_UOS_V20_SP2_Desktop"
ImportDistroMips64el "XAH2002740-690-600_loongson_UOS_V20_SP2_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2002740-690-600_loongson_UOS_V20_SP2_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XZFG200520_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XZFG200520_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XZFG200520_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAK2001670_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAK2001670_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAK2001670_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAK2001670_Loongson_UOS_V20_SP2U1_Desktop_NoKMS"
ImportDistroMips64el "XAK2001670_Loongson_UOS_V20_SP2U1_Desktop_NoKMS" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAK2001670_Loongson_UOS_V20_SP2U1_Desktop_NoKMS splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAK2001680_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAK2001680_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAK2001680_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2003670_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2003670_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2003670_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2003250_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2003250_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2003250_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2003340_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2003340_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2003340_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2004030_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2004030_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2004030_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2003600_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2003600_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2003600_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2003390_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2003390_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2003390_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2004330_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2004330_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2004330_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2004060_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2004060_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2004060_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2003490_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2003490_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2003490_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2002480_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2002480_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2002480_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="XAH2003990_Loongson_UOS_V20_SP2U1_Desktop"
ImportDistroMips64el "XAH2003990_Loongson_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=${PXE_AD}:/install/lx/XAH2003990_Loongson_UOS_V20_SP2U1_Desktop splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME="BM_loongson_kylin_v10_0430_desktop_Test"
ImportDistroMips64el "BM_loongson_kylin_v10_0430_desktop_Test" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/BM_loongson_kylin_v10_0430_desktop_Test/ automatic-ubiquity url=http://${FTP_AD}/http/lx/BM_loongson_kylin_v10_0430_desktop_Test/auto-preseed.cfg "
#
MIX_NAME="BM_loongson_kylin_v10_0704_desktop_120G"
ImportDistroMips64el "BM_loongson_kylin_v10_0704_desktop_120G" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/BM_loongson_kylin_v10_0704_desktop_120G/ 3"
#
MIX_NAME="BM_loongson_kylin_v10_0704_desktop_240G"
ImportDistroMips64el "BM_loongson_kylin_v10_0704_desktop_240G" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/BM_loongson_kylin_v10_0704_desktop_240G/ 3"
#
MIX_NAME="BM_loongson_kylin_v10_0907_desktop_120G_zf"
ImportDistroMips64el "BM_loongson_kylin_v10_0907_desktop_120G_zf" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/BM_loongson_kylin_v10_0907_desktop_120G_zf/ 3"
#
MIX_NAME="XSX2001500_BM_loongson_kylin_v10_desktop_120G"
ImportDistroMips64el "XSX2001500_BM_loongson_kylin_v10_desktop_120G" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/XSX2001500_BM_loongson_kylin_v10_desktop_120G/ 3"
#
MIX_NAME="XSX2001650_BM_loongson_kylin_v10_0704_desktop_120G"
ImportDistroMips64el "XSX2001650_BM_loongson_kylin_v10_0704_desktop_120G" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/XSX2001650_BM_loongson_kylin_v10_0704_desktop_120G/ 3"
#
MIX_NAME="XZFC200110_BM_loongson_kylin_v10_0704_desktop_240G"
ImportDistroMips64el "XZFC200110_BM_loongson_kylin_v10_0704_desktop_240G" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/XZFC200110_BM_loongson_kylin_v10_0704_desktop_240G/ 3"
#
MIX_NAME="XSC2003160_BM_loongson_kylin_v10_0704_desktop_240G"
ImportDistroMips64el "XSC2003160_BM_loongson_kylin_v10_0704_desktop_240G" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/XSC2003160_BM_loongson_kylin_v10_0704_desktop_240G/ 3"
#
MIX_NAME="XGGB200170_BM_loongson_kylin_v10_0907_desktop_120G"
ImportDistroMips64el "XGGB200170_BM_loongson_kylin_v10_0907_desktop_120G" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/XGGB200170_BM_loongson_kylin_v10_0907_desktop_120G/ 3"
#
MIX_NAME="XZZ200103_BM_loongson_kylin_v10_0907_desktop_120G"
ImportDistroMips64el "XGGB200170_BM_loongson_kylin_v10_0907_desktop_120G" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/XZZ200103_BM_loongson_kylin_v10_0907_desktop_120G/ 3"
#
MIX_NAME="XAH2002300-301_AHSRD_loongson_kylin_v10_0825_server"
ImportDistroMips64el "XAH2002300-301_AHSRD_loongson_kylin_v10_0825_server" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" " ip=dhcp inst.repo=nfs:${PXE_AD}:/install/lx/XAH2002300-301_AHSRD_loongson_kylin_v10_0825_server inst.ks=nfs:${PXE_AD}:/install/lx/XAH2002300-301_AHSRD_loongson_kylin_v10_0825_server/ks.cfg"
#
MIX_NAME="XSX2001800_BM_loongson_kylin_v10_0907_desktop_120G_wlh"
ImportDistroMips64el "XSX2001800_BM_loongson_kylin_v10_0907_desktop_120G_wlh" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/XSX2001800_BM_loongson_kylin_v10_0907_desktop_120G_wlh/ 3"
#
MIX_NAME="BM_loongson_kylin_v10_0907_desktop_120G_dp"
ImportDistroMips64el "BM_loongson_kylin_v10_0907_desktop_120G_dp" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/BM_loongson_kylin_v10_0907_desktop_120G_dp/ 3"
#
MIX_NAME="BM_loongson_kylin_v10_0907_desktop_240G_zf"
ImportDistroMips64el "BM_loongson_kylin_v10_0907_desktop_240G_zf" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/BM_loongson_kylin_v10_0907_desktop_240G_zf/ 3"
#
MIX_NAME="BM_loongson_kylin_v10_0907_desktop_240G_dp"
ImportDistroMips64el "BM_loongson_kylin_v10_0907_desktop_240G_dp" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "boot=casper quiet splash only-ubiquity loglevel=0 audit=0 netboot=nfs nfsroot=${PXE_AD}:/install/lx/BM_loongson_kylin_v10_0907_desktop_240G_dp/ 3"
