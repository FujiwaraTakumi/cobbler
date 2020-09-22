#!/usr/bin/env bash
#
#
#
#

## delete directory / file
RM_LIST[0]="/var/lib/cobbler"
RM_LIST[1]="/etc/cobbler"
RM_LIST[2]="/var/www/cobbler"
RM_LIST[3]="/var/log/cobbler"
for rmFile in ${RM_LIST[*]} ; do
    rm -rf ${rmFile}
done

