# Phytium_UOS_V20_0307_Desktop Test
MIX_NAME="Phytium_UOS_V20_0307_Desktop_Test"
ImportDistroX86_64 "uos_0307_desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=172.16.0.2:/install/ft/uos_0307_desktop"
#
MIX_NAME="Phytium_UOS_V20_SP1_Desktop"
ImportDistroX86_64 "uos_sp1_desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=172.16.0.2:/install/ft/uos_sp1_desktop"
#
MIX_NAME="Phytium_UOS_V20_SP1_Server_Test"
ImportDistroX86_64 "uos_sp1_server_test" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=172.16.0.2:/install/ft/uos_sp1_server_test"
#
MIX_NAME="Phytium_UOS_V20_SP1_Server"
ImportDistroX86_64 "uos_sp1_server" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=172.16.0.2:/install/ft/uos_sp1_server"
#
MIX_NAME="Phytium_UOS_V20_SP2U1_Desktop"
ImportDistroX86_64 "Phytium_UOS_V20_SP2U1_Desktop" "${MIX_NAME}" "vmlinuz" "initrd.img"
ImportProfile "${MIX_NAME}" "${MIX_NAME}" "console=tty boot=live union=overlay livecd-installer quiet splash -- root=/dev/nfs nfsroot=172.16.0.2:/install/ft/Phytium_UOS_V20_SP2U1_Desktop"
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

