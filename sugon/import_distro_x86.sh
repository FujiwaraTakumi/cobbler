# CentOS 6.6
MIX_NAME="CentOS6u6"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos6u6" "initrd_centos6u6.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "ramdisk_size=65536 ks=nfs:${PXE_AD}:/install/ks_centos6u6_all.cfg true ip=dhcp ksdevice=link vga=791 nouveau.modeset=0"
# CentOS 7.6
MIX_NAME="CentOS7u6"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos7u6" "initrd_centos7u6.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_legacy.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
# CentOS 7.6 Hygon
MIX_NAME="CentOS7u6_HYGON"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz_centos7u6_hygon" "initrd_centos7u6_hygon.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=ftp://${FTP_AD}/tools/kickstart/centos7u6_ks_legacy.cfg inst.repo=nfs:${PXE_AD}:/install/centos7u6hygon/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
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

