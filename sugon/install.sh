#!/usr/bin/env bash
#
# Python 3.6
# Pip 3
#

echo "Begin at $(date "+%Y-%m-%d %H:%M:%S")"

CUR_DIR=$(pwd)
WORK_DIR=$(cd "$(dirname "$0")"; pwd)
cd ${WORK_DIR}
cd ..

yum makecache
## RPMS


## pip


## Entry
python3 setup.py install


cd ${CUR_DIR}
