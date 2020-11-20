#!/usr/bin/env bash
#
#

echo "Profile ..."
abc=($(cobbler profile list))
for name in ${abc[*]}; do
    echo "${name}"
    cobbler profile remove --name="${name}"
done

echo "Distro ..."
abc=($(cobbler distro list))
for name in ${abc[*]}; do
    echo "${name}"
    cobbler distro remove --name="${name}"
done
