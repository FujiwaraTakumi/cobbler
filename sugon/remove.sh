#!/usr/bin/env bash
#
#

echo -e "Profile List ..."
abc=($(cobbler profile list))
for name in ${abc[*]}; do
    echo "${name}"
done

echo -e "\n\nInput distro will removed:"
read ABC_NAME

pExist=$(cobbler profile find --name=${ABC_NAME} | grep -c "${ABC_NAME}")
if [[ ${pExist} -ne 1 ]]; then
    echo "profile ${distro} not found."
    exit 3
fi
dExist=$(cobbler distro find --name=${ABC_NAME} | grep -c "${ABC_NAME}")
if [[ ${dExist} -ne 1 ]]; then
    echo "distro ${distro} not found."
    exit 3
fi


echo -e "\n\nRemove ..."
echo ${ABC_NAME}
echo -e "\ndone"