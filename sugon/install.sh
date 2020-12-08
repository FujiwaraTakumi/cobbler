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

## RPMS
yum makecache fast
yum install epel-release
yum makecache fast
yum install -y rsync net-tools epel-rpm-macros tftp-server pykickstart httpd \
 xinetd httpd-devel libpcap-devel ncurses ncurses-devel createrepo_c dnf-plugins-core \
 xorriso grub2-efi-x64-modules grub2-efi-aa64-modules python3 python3-devel python3-libs \
 python3-pip python3-pyudev python3-rpm-generators python3-rpm-macros python3-setuptools \
 python3-sphinx-common python36-dns python36-jinja2 python36-sphinx python36-distro python36-coverage \
 python36-cheetah python36-simplejson python36-six python36-tornado python36-urllib3 python36-devel \
 python36-libs python36-pip python36-crypto python36-PyYAML python36-requests python36-chardet \
 python36-cheetah python36-docutils python36-future python36-idna python36-ldap3 python36-markupsafe \
 python36-netaddr python36-pyasn1 python36-pycodestyle python36-pycurl python36-pyflakes python36-pygments \
 python36-pysocks python36-django python36-pathspec python36-responses python36-mod_wsgi mod_wsgi

## pip
pip3 install mod_wsgi -i https://pypi.tuna.tsinghua.edu.cn/simple --trusted-host pypi.tuna.tsinghua.edu.cn
pip3 install django==3.1.0 -i https://pypi.tuna.tsinghua.edu.cn/simple --trusted-host pypi.tuna.tsinghua.edu.cn

## Entry
python3 setup.py install
python3 setup.py install --root /

## Services
cp /etc/cobbler/cobblerd.service /etc/systemd/system/
systemctl enable httpd.service
systemctl enable cobblerd.service

## Start
systemctl restart httpd.service
systemctl restart cobblerd.service


cd ${CUR_DIR}
