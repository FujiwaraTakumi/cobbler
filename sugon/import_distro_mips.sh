## MIPS64EL
BaseDir="/install/tftpboot/mips64el"
#Loongson_UOS_V20_SP1_Server Test
MIX_NAME="Loongson_UOS_V20_SP1_Server_Test"
ImportDistroX86_64 "uos_sp1_server_test" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty netboot=nfs nfsroot=172.16.0.2:/install/lx/uos_sp1_server_test splash-- livecd-installer locales=zh_CN.UTF-8 boot=live"
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""
#
MIX_NAME=""
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" ""

