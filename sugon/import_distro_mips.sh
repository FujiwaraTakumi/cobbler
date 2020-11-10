
## MIPS64EL
BaseDir="/install/tftpboot/mips64el"
#Loongson_UOS_V20_SP1_Server Test
MIX_NAME="Loongson_UOS_V20_SP1_Server_Test"
ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz.efi_uos20" "initrd.lz_uos20"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" " root=/dev/nfs nfsroot=172.16.0.2:/install/uos20 rw boot=live union=overlay livecd-installer locale=zh_CN --"




