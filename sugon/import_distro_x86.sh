
# CentOS 7.6
MIX_NAME="CentOS7u6"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos7u6" "initrd_centos7u6.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_legacy.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS 7.6 Hygon
MIX_NAME="CentOS7u6_HYGON"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos7u6_hygon" "initrd_centos7u6_hygon.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_legacy.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6hygon/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS 6.6
MIX_NAME="CentOS6u6"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos6u6" "initrd_centos6u6.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ramdisk_size=65536 ks=nfs:${PXE_AD}:/install/ks_centos6u6_all.cfg true ip=dhcp ksdevice=link vga=791 nouveau.modeset=0"

# CentOS7.6 ORIGIN
MIX_NAME="CentOS7u6_ORIGIN"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos7u6" "initrd_centos7u6_origin.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_origin.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6_origin/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS7.6 Hygon ORIGIN
MIX_NAME="CentOS7u6_HYGON_ORIGIN"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos7u6_hygon" "initrd_centos7u6_hygon_origin.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_origin.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6hygon_origin vga=791 scsi_mod.scan=sync inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS7.4 DCU
MIX_NAME="CentOS7u4_DCU"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos7u4_hygon" "initrd_centos7u4_hygon.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u4_hygon_patch12_uefi.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u4_hygon_patch10 true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# Tencent MPT
MIX_NAME="TencentMPT"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos7u4" "mpt_output.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "intel_idle.max_cstate=1 intel_pstate=disable console=ttyS0,115200n1 console=tty0 net.ifnames=0 biosdevname=0"
# SIMS 8 LIVEOS
MIX_NAME="SIMS_8_LiveOS"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://${PXE_AD}:/install/x86_64/sims_8_liveos ip=dhcp rw text bootdev=link rd.live.check vga=791 "


# UOS 20
MIX_NAME="UOS20"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos20" "initrd.lz_uos20"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "root=/dev/nfs nfsroot=${PXE_AD}:/install/uos20 rw boot=live union=overlay livecd-installer locale=zh_CN --"
#
MIX_NAME="Hygon_UOS_V20_SP1_Server"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos_sp1" "initrd_uos_sp1.lz"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "root=/dev/nfs nfsroot=${PXE_AD}:/install/uos_sp1_server rw boot=live union=overlay livecd-installer locale=zh_CN --"
#
MIX_NAME="Hygon_UOS_V20_SP1_Server_NVME"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos_sp1" "initrd_uos_sp1.lz"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "root=/dev/nfs nfsroot=${PXE_AD}:/install/uos_sp1_server_nvme rw boot=live union=overlay livecd-installer locale=zh_CN --"
#
MIX_NAME="Hygon_UOS_V20_SP1_Desktop"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos_sp1_desktop" "initrd_uos_sp1_desktop.lz"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "root=/dev/nfs nfsroot=${PXE_AD}:/install/uos_sp1_desktop rw boot=live union=overlay livecd-installer locale=zh_CN --"
#
MIX_NAME="Hygon_KOS_V10_0430_Server"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_kos_0430_server" "initrd_kos_0430_server.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ip=dhcp inst.repo=nfs:${PXE_AD}:/install/kos_0430_server  inst.ks=nfs:${PXE_AD}:/install/ks_kos_0430_server.cfg"


#
# CUSTOMER
#
#
MIX_NAME="dats"
ImportDistroX86_64 "old" "${MIX_NAME}" "vmlinuz.centos6u6" "initrd.img.centos6u6"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ramdisk_size=65536 ks=nfs:172.16.0.9:/opt/install/centos6u6_x64_ks_v1.cfg true ip=dhcp ksdevice=link vga=791 nouveau.modeset=0"
#
MIX_NAME="dats-c74"
ImportDistroX86_64 "old" "${MIX_NAME}" "vmlinuz.centos7u4" "initrd.img.centos7u4"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/opt/install/centos7u4_x64_ks_v4.cfg true ksdevice=link vga=791 nouveau.modeset=0"
#
MIX_NAME="dats-c73"
ImportDistroX86_64 "old" "${MIX_NAME}" "vmlinuz.centos7u3" "initrd.img.centos7u3"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/opt/install/c73-n.cfg true ksdevice=link vga=791 nouveau.modeset=0"
#
MIX_NAME="dats-n"
ImportDistroX86_64 "old" "${MIX_NAME}" "vmlinuz.centos6u6" "initrd.img.centos6u6"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ramdisk_size=65536 ks=nfs:172.16.0.9:/opt/install/centos6u6_x64_ks_factory.cfg true ip=dhcp ksdevice=link vga=791 nouveau.modeset=0"
#
MIX_NAME="dats-plus"
ImportDistroX86_64 "old" "${MIX_NAME}" "vmlinuz.centos6u6" "initrd.img.centos6u6"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ramdisk_size=65536 ks=nfs:172.16.0.9:/opt/install/centos6u6_x64_ks_vrenovate.cfg true ip=dhcp ksdevice=link vga=791 nouveau.modeset=0"
#
MIX_NAME="dats_1u4"
ImportDistroX86_64 "old" "${MIX_NAME}" "vmlinuz.centos6u6" "initrd.img.centos6u6"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ramdisk_size=65536 ks=nfs:172.16.0.9:/opt/install/centos6u6_x64_ks_v1u4.cfg true ip=dhcp ksdevice=link vga=791 nouveau.modeset=0"
#
MIX_NAME="dats-8"
ImportDistroX86_64 "old" "${MIX_NAME}" "vmlinuz.centos6u6" "initrd.img.centos6u6"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ramdisk_size=65536 ks=nfs:172.16.0.9:/opt/install/centos6u6_x64_ks_3156.cfg true ip=dhcp ksdevice=link vga=791 nouveau.modeset=0"
#
MIX_NAME="suse"
ImportDistroX86_64 "custom" "${MIX_NAME}" "linux.suse11sp3" "initrd.suse11sp3"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9:/opt/install/sles11sp3 autoyast=nfs://172.16.0.9:/opt/install/sles11sp3/suse11_sp3.xml vga=791"
#
MIX_NAME="c61"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u164" "initrd.cent6u164.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "textmode=1 ramdisk_size=65536 splash=verbose showopts install=nfs://172.16.0.9/public/cent6u164"
#
MIX_NAME="c62"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u264" "initrd.cent6u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "textmode=1 ramdisk_size=65536 splash=verbose showopts install=nfs://172.16.0.9/public/cent6u264"
#
MIX_NAME="c63"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u364" "initrd.cent6u364.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "textmode=1 ramdisk_size=65536 splash=verbose showopts install=nfs://172.16.0.9/public/cent6u364"
#
MIX_NAME="c64"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u464" "initrd.cent6u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "textmode=1 ramdisk_size=65536 splash=verbose showopts install=nfs://172.16.0.9/public/cent6u464"
#
MIX_NAME="c65"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u564" "initrd.cent6u564.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "textmode=1 ramdisk_size=65536 splash=verbose showopts install=nfs://172.16.0.9/public/cent6u564 "
#
MIX_NAME="c66"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u664" "initrd.cent6u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "textmode=1 ramdisk_size=65536 splash=verbose showopts install=nfs://172.16.0.9/public/cent6u664"
#
MIX_NAME="dbs"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u664" "initrd.cent6u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "textmode=1 ramdisk_size=65536 splash=verbose showopts ks=nfs:172.16.0.9:/public/cent6u664/isolinux/dbstor.cfg ksdevice=link"
#
MIX_NAME="c66-0690"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u664" "initrd.cent6u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent6u664/isolinux/XDB1900690.cfg ksdevice=link"
#
MIX_NAME="c67"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u764" "initrd.cent6u764.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "textmode=1 ramdisk_size=65536 splash=verbose showopts install=nfs://172.16.0.9/public/cent6u764"
#
MIX_NAME="c68"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u864" "initrd.cent6u864.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "textmode=1 ramdisk_size=65536 splash=verbose showopts install=nfs://172.16.0.9/public/cent6u864"
#
MIX_NAME="c69-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u9-hg" "initrd.cent6u9-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.6.19/public/cent6u9-hg"
#
MIX_NAME="dh-c69"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.dh_cent6u9" "initrd.dh_cent6u9.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/dahua_cent6u9_u01/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="c70"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u064" "initrd.cent7u064.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u064"
#
MIX_NAME="c70-"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u064" "initrd.cent7u064.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u064/isolinux/mini-auto.cfg ksdevice=link"
#
MIX_NAME="c70-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u0-hg" "initrd.cent7u0-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u0-hg"
#
MIX_NAME="c70-hg-1240"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u0-hg" "initrd.cent7u0-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u0-hg/isolinux/JSH2001240.cfg ksdevice=link"
#
MIX_NAME="c71"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u164" "initrd.cent7u164.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u164"
#
MIX_NAME="c72"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u264"
#
MIX_NAME="c72-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264-hg" "initrd.cent7u264-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u2-hg"
#
MIX_NAME="c72-"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u264/isolinux/mini.cfg ksdevice=link"
#
MIX_NAME="c72-00510-10"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u264/isolinux/xwa2000510.cfg ksdevice=link"
#
MIX_NAME="c72-wa-1660"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u264/isolinux/kwa1901660.cfg ksdevice=link"
#
MIX_NAME="c72-0221-10-20"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.XWA2000221-10-20-c72.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/XWA2000221-10-20/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="c72-0220"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.XWA2000220-c72.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/XWA2000220/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="c72-0221-30-60"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u264/isolinux/xwa2000221-30-60.cfg ksdevice=link"
#
MIX_NAME="c72-renzx"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u264/isolinux/renzx.cfg ksdevice=link"
#
MIX_NAME="c72-renzx-2t"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u264/isolinux/renzx-2t.cfg ksdevice=link"
#
MIX_NAME="c72-hg-0200"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264-hg" "initrd.cent7u264-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u2-hg/isolinux/jkj1890200.cfg ksdevice=link"
#
MIX_NAME="c72-hg-1810"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264-hg" "initrd.cent7u264-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u2-hg/isolinux/XGD1901810.cfg ksdevice=link"
#
MIX_NAME="c73"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u364" "initrd.cent7u364.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u364"
#
MIX_NAME="c73-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u3-hg" "initrd.cent7u3-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u3-hg"
#
MIX_NAME="c73-hg-0290"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u3-hg" "initrd.cent7u3-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u3-hg/isolinux/JJY2000290.cfg ksdevice=link"
#
MIX_NAME="c73-hg-tdwy"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u3-hg" "initrd.cent7u3-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u3-hg/isolinux/tdwy.cfg ksdevice=link"
#
MIX_NAME="c73-renzx"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u364" "initrd.cent7u364.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/renzx-c73/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="c73-mini"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u364" "initrd.cent7u364.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u364/isolinux/mini_ks.cfg ksdevice=link"
#
MIX_NAME="c73-2400"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u364" "initrd.cent7u364.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u364/isolinux/xwa1902400.cfg ksdevice=link"
#
MIX_NAME="c73-0110"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u364" "initrd.cent7u364.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u364/isolinux/xnjr200040.cfg ksdevice=link"
#
MIX_NAME="c74"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u464 "
#
MIX_NAME="c74-"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u464/isolinux/mini.cfg ksdevice=link"
#
MIX_NAME="c74-3323-30"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/kegong/xwa13303323-30"
#
MIX_NAME="c74-3323-40"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/kegong/xwa13303323-40"
#
MIX_NAME="c74-3323-30-1"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/kegong/xwa13303323-30/isolinux/xwa1803323.cfg ksdevice=link"
#
MIX_NAME="c74-3323-40-1"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/kegong/xwa13303323-40/isolinux/ks1.cfg ksdevice=link"
#
MIX_NAME="c74-3324"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u464/isolinux/xwa1803324.cfg ksdevice=link"
#
MIX_NAME="c74-0600"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u464/isolinux/XZFI190170.cfg ksdevice=link"
#
MIX_NAME="c74-2360"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u464/isolinux/lsh2000110.cfg ksdevice=link"
#
MIX_NAME="c74-0010"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u464/isolinux/xcq200010.cfg ksdevice=link"
#
MIX_NAME="c74-dahua"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u464/isolinux/dahuamini.cfg ksdevice=link"
#
MIX_NAME="c74-dbs"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u464/isolinux/dbstor100.cfg ksdevice=link"
#
MIX_NAME="c74-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u4-hg" "initrd.cent7u4-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u4-hg/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="c74-hwj"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u464/hwj/ks.cfg ksdevice=link"
#
MIX_NAME="c74-hwj-20"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u464/hwj/ks-20.cfg ksdevice=link"
#
MIX_NAME="c74-hg-4700"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u4-hg" "initrd.cent7u4-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u4-hg/isolinux/lkj1804700.cfg ksdevice=link"
#
MIX_NAME="c75"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u564" "initrd.cent7u564.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u564 "
#
MIX_NAME="c75-1360"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u564" "initrd.cent7u564.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u564/isolinux/XWA2001360.cfg ksdevice=link"
#
MIX_NAME="c75-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u5-hg" "initrd.cent7u5-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u5-hg"
#
MIX_NAME="c76"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u664 "
#
MIX_NAME="c76-0010"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u664/isolinux/XJY2000010.cfg ksdevice=link"
#
MIX_NAME="c76-0730"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u664/isolinux/XWA2000730.cfg ksdevice=link"
#
MIX_NAME="c76-0060"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u664/isolinux/XCS2000060.cfg ksdevice=link"
#
MIX_NAME="c76-0014-210"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u664/isolinux/XYXE200014-210.cfg ksdevice=link"
#
MIX_NAME="c76-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u6-hg" "initrd.cent7u6-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u664-hg"
#
MIX_NAME="c76-hg-0014"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u6-hg" "initrd.cent7u6-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u664-hg/isolinux/XYXE200014-210.cfg ksdevice=link"
#
MIX_NAME="c77-0140"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u764" "initrd.cent7u764.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u764/isolinux/XTX2000130.cfg ksdevice=link"
#
MIX_NAME="c78"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u864" "initrd.cent7u864.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/cent7u864"
#
MIX_NAME="shendu"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.shendu" "initrd.shendu.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/shendu"
#
MIX_NAME="shendu-1000"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.shendu" "initrd.shendu.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/shendu/isolinux/lcs1901000.cfg ksdevice=link"
#
MIX_NAME="r60"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u064" "initrd.redh6u064.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u064"
#
MIX_NAME="r62"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u264" "initrd.redh6u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u264"
#
MIX_NAME="r62-wa-970-128"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u264" "initrd.redh6u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u264/isolinux/kwa1700970-128.cfg ksdevice=link dd=nfs:172.16.0.9:/public/redh6u264/mpt3sas-6.00.00.00_rhel6.2-1.x86_64.iso"
#
MIX_NAME="r63"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u364" "initrd.redh6u364.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u364"
#
MIX_NAME="r64"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u464" "initrd.redh6u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u464 dd=nfs:172.16.0.9:/public/redh6u464/mpt3sas-10.00.00.00_rhel6.4-1.x86_64.iso"
#
MIX_NAME="r64-wa-1040"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u464" "initrd.redh6u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u464/isolinux/kwa1701040.cfg ksdevice=link dd=nfs:172.16.0.9:/public/redh6u464/mpt3sas-10.00.00.00_rhel6.4-1.x86_64.iso"
#
MIX_NAME="r64-wa-0360"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u464" "initrd.redh6u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u464/isolinux/kwa1710360.cfg ksdevice=link dd=nfs:172.16.0.9:/public/redh6u464/mpt3sas-10.00.00.00_rhel6.4-1.x86_64.iso"
#
MIX_NAME="r64-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u4-hg" "initrd.redh6u4-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u4-hg"
#
MIX_NAME="r64-hg-0021"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u4-hg" "initrd.redh6u4-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u4-hg/isolinux/xntx200021.cfg ksdevice=link"
#
MIX_NAME="r65"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u564" "initrd.redh6u564.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u564"
#
MIX_NAME="r66"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u664" "initrd.redh6u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u664"
#
MIX_NAME="r67"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u764" "initrd.redh6u764.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u764"
#
MIX_NAME="r67-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u7-hg" "initrd.redh6u7-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u7-hg"
#
MIX_NAME="r67-"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u764" "initrd.redh6u764.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u764/isolinux/mini.cfg ksdevice=link"
#
MIX_NAME="r67-3783"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u764" "initrd.redh6u764.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u764/isolinux/basic.cfg ksdevice=link"
#
MIX_NAME="r68"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u864" "initrd.redh6u864.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u864"
#
MIX_NAME="r68-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.hg.redh6u8" "initrd.hg.redh6u8.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u8-hg"
#
MIX_NAME="r68-"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u864" "initrd.redh6u864.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u864/isolinux/mini-ks.cfg ksdevice=link"
#
MIX_NAME="r68-0550"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u864" "initrd.redh6u864.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u864/isolinux/xwa1900550.cfg ksdevice=link"
#
MIX_NAME="r69"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u964" "initrd.redh6u964.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u964"
#
MIX_NAME="r69-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u9-hg" "initrd.redh6u9-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "install=nfs://172.16.0.9/public/redh6u9-hg"
#
MIX_NAME="r69-0630"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u964" "initrd.redh6u964.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u964/isolinux/ljgb190050.cfg ksdevice=link"
#
MIX_NAME="r69-0150"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u964" "initrd.redh6u964.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u964/isolinux/XYXF200150.cfg ksdevice=link"
#
MIX_NAME="r69-wa-2321"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u964" "initrd.redh6u964.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u964/isolinux/kwa1802321.cfg ksdevice=link"
#
MIX_NAME="r69-wa-2321-2"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u964" "initrd.redh6u964.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u964/isolinux/kwa1802321-2.cfg ksdevice=link"
#
MIX_NAME="r69-hg-mini"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh6u9-hg" "initrd.redh6u9-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh6u9-hg/isolinux/mini.cfg ksdevice=link"
#
MIX_NAME="r70"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u064" "initrd.redh7u064.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/redh7u064"
#
MIX_NAME="r70-full"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u064" "initrd.redh7u064.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh7u064/isolinux/full.cfg ksdevice=link"
#
MIX_NAME="r71"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u164" "initrd.redh7u164.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/redh7u164"
#
MIX_NAME="r72"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u264" "initrd.redh7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/redh7u264"
#
MIX_NAME="r72-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u2-hg" "initrd.redh7u2-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/redh7u2-hg"
#
MIX_NAME="r72-wa-1660-2"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u264" "initrd.redh7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh7u264/isolinux/kwa1901660-2.cfg ksdevice=link"
#
MIX_NAME="r72-wa-1660-1"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u264" "initrd.redh7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh7u264/isolinux/kwa1901660-1.cfg ksdevice=link"
#
MIX_NAME="r72-wa-1660-128"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u264" "initrd.redh7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh7u264/isolinux/kwa1901660-128.cfg ksdevice=link"
#
MIX_NAME="r72-0130"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u264" "initrd.redh7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh7u264/isolinux/xwa2000130.cfg ksdevice=link inst.sshd"
#
MIX_NAME="r73"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u364" "initrd.redh7u364.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/redh7u364 "
#
MIX_NAME="r74"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u464" "initrd.redh7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/redh7u464"
#
MIX_NAME="r74-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u4-hg" "initrd.redh7u4-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/redh7u4-hg"
#
MIX_NAME="r74-2682"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u464" "initrd.redh7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh7u464/isolinux/40002682.cfg ksdevice=link"
#
MIX_NAME="r74-2683"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u464" "initrd.redh7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh7u464/isolinux/40002683.cfg ksdevice=link"
#
MIX_NAME="r74-320"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u464" "initrd.redh7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh7u464/isolinux/full.cfg ksdevice=link"
#
MIX_NAME="r74-wa-1770"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u464" "initrd.redh7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/redh7u464/isolinux/kwa1901770.cfg ksdevice=link"
#
MIX_NAME="r75"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.redh7u564" "initrd.redh7u564.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/redh7u564"
#
MIX_NAME="54"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.letv" "initrd.letv.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/letv/kickstart/webserver.cfg ksdevice=link"
#
MIX_NAME="55"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.letv" "initrd.letv.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/letv/kickstart/videocdn.cfg ksdevice=link"
#
MIX_NAME="renzx"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.renzx" "initrd.renzx.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/renzx/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="renzx-c72"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.renzx-c72.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/renzx-c72/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="renzx-c72-420"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/renzx-c72-420/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="56"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.gaoshen" "initrd.gaoshen2.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/gaoshen2/ks.cfg ksdevice=link"
#
MIX_NAME="57"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.zj_cent6u7" "initrd.zj_cent6u7.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/zj_cent6u7/ks.cfg ksdevice=link"
#
MIX_NAME="58"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.zj_cent6u6" "initrd.zj_cent6u6.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/zj_cent6u6/ks.cfg ksdevice=link"
#
MIX_NAME="59"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.zj_cent6u7" "initrd.zj_cent6u7_mysql.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/zj_cent6u7_mysql/isolinux/ks-u.cfg ksdevice=link"
#
MIX_NAME="60"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u764" "initrd.cent6u764.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent6u764/isolinux/dh.cfg ksdevice=link"
#
MIX_NAME="10cc"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u064" "initrd.cent7u064.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7u064/test.cfg ksdevice=link"
#
MIX_NAME="XGMC"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u164" "initrd.cent7u164.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/cent7.1-XGMC/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="KQY-c71"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u164" "initrd.cent7u164.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/green_net/ks.cfg ksdevice=link"
#
MIX_NAME="KQY-c76"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664-lw" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/green_net_7u6/ks.cfg ksdevice=link"
#
MIX_NAME="KQY-c77"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u764" "initrd.cent7u764.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/green_net_7u7/ks.cfg ksdevice=link"
#
MIX_NAME="baisy"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u664" "initrd.cent6u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/baisy/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="baisy-c72"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.baisy-cent7u2" "initrd.baisy-cent7u2.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/baisy-cent7.2/ks.cfg ksdevice=link"
#
MIX_NAME="baisy-c73"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u364" "initrd.cent7u364.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/baisy-cent7.3/ks.cfg ksdevice=link"
#
MIX_NAME="baisy-c75"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.baisy-cent7u5" "initrd.baisy-cent7u5.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/baisy-cent7.5/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="yushi"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.yushi-cent7" "initrd.yushi-cent7.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/yushi-cent7/anaconda-ks.cfg ksdevice=link"
#
MIX_NAME="aqy"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u764" "initrd.cent6u764.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/aqy/ks.cfg ksdevice=link"
#
MIX_NAME="aqy-c72"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/aqy-c72-2/ks.cfg ksdevice=link"
#
MIX_NAME="aqy-c76"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/aqy-c76/ks.cfg ksdevice=link"
#
MIX_NAME="ruijie"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.ruijie" "initrd.ruijie.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/ruijie/isolinux/ks_p.cfg ksdevice=link pxe_install"
#
MIX_NAME="king"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u564" "initrd.cent6u564.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/king/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="dfnet"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u564" "initrd.dfnet.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "net.ifnames=0 biosdevname=0 ks=nfs:172.16.0.9:/public/dongfangnet/pe_pxe.cfg ksdevice=link"
#
MIX_NAME="dfnet-620"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u564" "initrd.dfnet.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "net.ifnames=0 biosdevname=0 ks=nfs:172.16.0.9:/public/dongfangnet_I620/pe_pxe.cfg ksdevice=link"
#
MIX_NAME="wa-2020"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent6u364" "initrd.cent6u364.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/kwa_netfirm/ks.cfg ksdevice=link"
#
MIX_NAME="hik-c72"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/hik-cent7u2/ks_en.cfg ksdevice=link"
#
MIX_NAME="hik-c72-vtdu"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u264" "initrd.cent7u264.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/hik-cent7u2_vtdu/ks.cfg ksdevice=link"
#
MIX_NAME="hik-hvitr"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u464" "initrd.cent7u464.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/hik-hvirt/ks.cfg ksdevice=link"
#
MIX_NAME="hik-c74-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.hik-cent7u4-hg" "initrd.hik-cent7u4-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/hik-cent7u4-hg/ks_en.cfg ksdevice=link"
#
MIX_NAME="hik-c74-isv"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.hik-cent7u4-hg" "initrd.hik-cent7u4-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/hik-cent7u4-hg/ks_isv.cfg ksdevice=link"
#
MIX_NAME="hik-c74-isc"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.hik-cent7u4-hg" "initrd.hik-cent7u4-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/hik-cent7u4-hg/ks_isc.cfg ksdevice=link inst.ssd"
#
MIX_NAME="hik-c76"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664-hik" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/hik-cent7u6/ks_en.cfg ksdevice=link"
#
MIX_NAME="hik-c76-isc"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664-hik" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/hik-cent7u6/ks_isc.cfg ksdevice=link"
#
MIX_NAME="hik-c76-isc-1.5"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664-hik" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/hik-cent7u6/ks_isc_v1.5.cfg ksdevice=link"
#
MIX_NAME="nk72"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.nk7u2" "initrd.nk7u2.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/nk7u2"
#
MIX_NAME="nk74-hg"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.nk7u4-hg" "initrd.nk7u4-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.stage2=nfs://172.16.0.9/public/nk7u4-hg"
#
MIX_NAME="nk74-wa-0080"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.nk7u4-hg" "initrd.nk7u4-hg.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs://172.16.0.9/public/nk7u4-hg/isolinux/jwa1990080.cfg ksdevice=link"
#
MIX_NAME="nk74"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.nk74" "initrd.nk74.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/nk74/ks.cfg ksdevice=link"
#
MIX_NAME="baidu-c76"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.cent7u664" "initrd.cent7u664.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/baidu-cent7.6/isolinux/ks.cfg ksdevice=link"
#
MIX_NAME="nk74-zl"
ImportDistroX86_64 "custom" "${MIX_NAME}" "vmlinuz.nk74-zl" "initrd.nk74-zl.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ks=nfs:172.16.0.9:/public/nk74-zl/ks.cfg ksdevice=link"

