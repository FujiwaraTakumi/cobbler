# Cobbler 安装运维手册



## 实验环境

* CentOS 7.6
* Python 3.6
* cobbler-3.1.0



## 文档

https://cobbler.readthedocs.io

https://github.com/cobbler

https://cobbler.github.io



## 安装

### Yum方式

* 安装cobbler

  > yum install -y cobbler cobbler-web dhcp tftp-server pykickstart httpd xinetd

* 启动服务

  > systemctl enable httpd
  > systemctl enable xinetd
  > systemctl enable tftp
  > systemctl enable cobblerd

* 检查设置信息

  > cobbler check


### Tarball方式

* 下载

  ```tex
  cobbler-3.X.zip
  ```

* Python3 安装

  ```
  # cobbler-2.8.5-0.3.el7.x86_64.rpm
  # cobbler-web-2.8.5-0.3.el7.noarch.rpm
  
  yum makecache fast
  
  createrepo_c-0.10.0-20.el7.x86_64.rpm
  dnf-plugins-core-4.0.2.2-3.el7_6.noarch.rpm
  epel-rpm-macros-7-25.noarch.rpm
  pykickstart-1.99.66.21-1.el7.noarch.rpm
  python3-3.6.8-13.el7.x86_64.rpm
  python36-chardet-3.0.4-1.el7.noarch.rpm
  python36-cheetah-3.2.4-1.el7.x86_64.rpm
  python36-coverage-4.0.3-5.el7.x86_64.rpm
  python36-crypto-2.6.1-16.el7.x86_64.rpm
  python36-distro-1.2.0-3.el7.noarch.rpm
  python36-dns-1.16.0-1.el7.noarch.rpm
  python36-docutils-0.14-1.el7.noarch.rpm
  python36-future-0.18.2-2.el7.noarch.rpm
  python36-idna-2.7-2.el7.noarch.rpm
  python36-jinja2-2.11.1-1.el7.noarch.rpm
  python36-ldap3-2.6.1-1.el7.noarch.rpm
  python36-markupsafe-0.23-3.el7.x86_64.rpm
  python36-netaddr-0.7.18-3.el7.noarch.rpm
  python36-pyasn1-0.4.7-1.el7.noarch.rpm
  python36-pycodestyle-2.5.0-1.el7.noarch.rpm
  python36-pycurl-7.43.0-7.el7.x86_64.rpm
  python36-pyflakes-1.6.0-4.el7.noarch.rpm
  python36-pygments-2.2.0-3.el7.noarch.rpm
  python36-pysocks-1.6.8-7.el7.noarch.rpm
  python36-PyYAML-3.13-1.el7.x86_64.rpm
  python36-requests-2.14.2-2.el7.noarch.rpm
  python36-simplejson-3.10.0-2.el7.x86_64.rpm
  python36-six-1.14.0-2.el7.noarch.rpm
  python36-sphinx-1.2.3-6.el7.noarch.rpm
  python36-tornado-4.4.2-2.el7.x86_64.rpm
  python36-urllib3-1.25.6-1.el7.noarch.rpm
  python3-devel-3.6.8-13.el7.i686.rpm
  python3-devel-3.6.8-13.el7.x86_64.rpm
  python3-libs-3.6.8-13.el7.x86_64.rpm
  python3-pip-9.0.3-7.el7_7.noarch.rpm
  python3-pyudev-0.21.0-2.el7.noarch.rpm
  python3-rpm-generators-6-2.el7.noarch.rpm
  python3-rpm-macros-3-32.el7.noarch.rpm
  python3-setuptools-39.2.0-10.el7.noarch.rpm
  python3-sphinx-common-1.2.3-6.el7.noarch.rpm
  xorriso-1.5.2-1.el7.x86_64.rpm
  python36-mod_wsgi
  
  ```




* Cobbler安装

  ```
  unzip cobbler-3.X.zip
  cd cobbler-3.X
  
  # 生成rpm
  make rpms
  # 安装到本地，覆盖已安装文件
  make install
  make devinstall
  
  python3 setup.py install
  python3 setup.py install --root /
  
  # 系统服务
  cp /etc/cobbler/cobblerd.service /etc/systemd/system/
  systemctl enable cobblerd.service  
  systemctl start cobblerd.service
  
  # 手动运行
  /usr/local/bin/cobblerd -B
  
  # 版本
  [root@worker1 cobbler-3.1.0]# cobbler --version
  Cobbler 3.0.1
    source: ?, ?
    build time: Wed Aug 26 07:49:21 2020
  
  ```

* Cobbler卸载

  > make clean




* Apache配置

  >  cp config/apache/cobbler* /etc/httpd/conf.d/



* 系统服务

  > systemctl start/stop cobblerd.service

  ```
  ● cobblerd.service - Cobbler Helper Daemon
     Loaded: loaded (/etc/systemd/system/cobblerd.service; disabled; vendor preset: disabled)
     Active: active (running) since Wed 2020-10-21 16:56:27 CST; 2min 19s ago
    Process: 3859 ExecStartPost=/usr/bin/touch /usr/share/cobbler/web/cobbler.wsgi (code=exited, status=0/SUCCESS)
   Main PID: 3858 (cobblerd)
     CGroup: /system.slice/cobblerd.service
             └─3858 /usr/bin/python3 /usr/local/bin/cobblerd -F
  
  Oct 21 16:56:27 worker1 systemd[1]: Starting Cobbler Helper Daemon...
  Oct 21 16:56:27 worker1 systemd[1]: Started Cobbler Helper Daemon.
  ```

  > systemctl start/stop httpd.service

  ```
  ● httpd.service - The Apache HTTP Server
     Loaded: loaded (/usr/lib/systemd/system/httpd.service; enabled; vendor preset: disabled)
     Active: active (running) since Wed 2020-10-21 16:57:18 CST; 2min 0s ago
  ```




## 目录结构

```
/etc/cobbler                  # 配置文件目录
/etc/cobbler/settings         # cobbler主配置文件，YAML格式
/etc/cobbler/dhcp.template    # DHCP服务的配置模板
/etc/cobbler/tftpd.template   # tftp服务的配置模板
/etc/cobbler/rsync.template   # rsync服务的配置模板
/etc/cobbler/iso              # iso模板配置文件目录
/etc/cobbler/pxe              # pxe模板文件目录
/etc/cobbler/power            # 电源的配置文件目录
/etc/cobbler/users.conf       # Web服务授权配置文件
/etc/cobbler/users.digest     # 用于web访问的用户名密码配置文件
/etc/cobbler/dnsmasq.template # DNS服务的配置模板
/etc/cobbler/modules.conf     # Cobbler模块配置文件

/var/lib/cobbler              # Cobbler数据目录
/var/lib/cobbler/config       # 配置文件
/var/lib/cobbler/kickstarts   # 默认存放kickstart文件
/var/lib/cobbler/loaders      # 存放的各种引导程序

/var/www/cobbler              # 系统安装镜像目录
/var/www/cobbler/ks_mirror    # 导入的系统镜像列表
/var/www/cobbler/images       # 导入的系统镜像启动文件
/var/www/cobbler/repo_mirror  # yum源存储目录

/var/log/cobbler              # 日志目录
/var/log/cobbler/install.log  # 客户端系统安装日志
/var/log/cobbler/cobbler.log  # cobbler日志
```



## 配置

* settings设置

  修改配置后需要重启cobblerd.service，然后“cobbler check”检查是否存在异常项。

  dhcp

  ```
  # set to 1 to enable Cobbler's DHCP management features.
  manage_dhcp: 1
  ......
  next_server: 172.16.0.11
  ```

  tftp

  ```
  # set to 1 to enable Cobbler's TFTP management features.
  manage_tftpd: 1
  ```

  server

  ```
  # this is the address of the cobbler server
  server: 172.16.0.11
  ```

  xmlrpc

  ```
  xmlrpc_port: 25151
  ```

* 密码

  >  openssl passwd -1 -salt 'sugon' 'sugon' 

  ```
  $1$sugon$Pb5ACeAsmXmCkkZwZUqVN.
  ```

* 加载loaders

  > cobbler get-loaders

  ```
  task started: 2020-09-02_104231_get_loaders
  task started (id=Download Bootloader Content, time=Wed Sep  2 10:42:31 2020)
  running python triggers from /var/lib/cobbler/triggers/task/get_loaders/pre/*
  running shell triggers from /var/lib/cobbler/triggers/task/get_loaders/pre/*
  shell triggers finished successfully
  downloading https://cobbler.github.io/loaders/README to /var/lib/cobbler/loaders/README
  downloading https://cobbler.github.io/loaders/COPYING.yaboot to /var/lib/cobbler/loaders/COPYING.yaboot
  downloading https://cobbler.github.io/loaders/COPYING.syslinux to /var/lib/cobbler/loaders/COPYING.syslinux
  downloading https://cobbler.github.io/loaders/yaboot-1.3.17 to /var/lib/cobbler/loaders/yaboot
  downloading https://cobbler.github.io/loaders/pxelinux.0-3.86 to /var/lib/cobbler/loaders/pxelinux.0
  downloading https://cobbler.github.io/loaders/menu.c32-3.86 to /var/lib/cobbler/loaders/menu.c32
  downloading https://cobbler.github.io/loaders/grub-0.97-x86.efi to /var/lib/cobbler/loaders/grub-x86.efi
  downloading https://cobbler.github.io/loaders/grub-0.97-x86_64.efi to /var/lib/cobbler/loaders/grub-x86_64.efi
  *** TASK COMPLETE ***
  ```

* 生成bootloader（grub.0/grubx64.efi/grubaa64.efi/ppc64le）

  > cd scripts
  >
  > sh mkgrub.sh






## CLI 操作

#### 常用命令

```
cobbler check 			核对当前设置是否有问题
cobbler list 			列出所有的cobbler元素
cobbler report 			列出元素的详细信息
cobbler sync 			同步配置到数据目录，更改配置后执行
cobbler reposync 		同步yum仓库
cobbler distro 			查看导入的发行版系统信息
	add
	copy
	edit
	find
	list
	remove
	rename
	report

cobbler system 			查看添加的系统信息
    add
    copy
    dumpvars
    edit
    find
    get-autoinstall
    list
    poweroff
    poweron
    powerstatus
    reboot
    remove
    rename
    report

cobbler profile 		查看配置信息
	add
    copy
    dumpvars
    edit
    find
    get-autoinstall
    list
    remove
    rename
    report

```



#### 自动添加/导入系统镜像

> mount -o loop CentOS-7-x86_64-DVD-1810.iso /mnt

执行导入：
> cobbler import --path=/mnt/ --name=CentOS7u6 --arch=x86_64

查看导入后状态：

> cobbler distro report --name=CentOS7u6

```
Name                           : CentOS-7-DVD-1810-x86_64
Architecture                   : x86_64
Automatic Installation Template Metadata : {'tree': 'http://@@http_server@@/cblr/links/CentOS-7-DVD-1810-x86_64'}
TFTP Boot Files                : {}
Boot loader                    : grub
Breed                          : redhat
Comment                        : 
Fetchable Files                : {}
Initrd                         : /var/www/cobbler/distro_mirror/CentOS-7-x86_64-DVD-1810-x86_64/images/pxeboot/initrd.img
Kernel                         : /var/www/cobbler/distro_mirror/CentOS-7-x86_64-DVD-1810-x86_64/images/pxeboot/vmlinuz
Kernel Options                 : {}
Kernel Options (Post Install)  : {}
Management Classes             : []
OS Version                     : rhel6
Owners                         : ['admin']
Redhat Management Key          : 
Template Files                 : {}
```

查看PROFILE状态：

> cobbler profile report --name=c7u6

```
Name                           : CentOS-7-DVD-1810-x86_64
Automatic Installation Template : sample.ks
Automatic Installation Metadata : {}
TFTP Boot Files                : {}
Comment                        : 
DHCP Tag                       : default
Distribution                   : CentOS-7-DVD-1810-x86_64
Enable gPXE?                   : 0
Enable PXE Menu?               : 1
Fetchable Files                : {}
Kernel Options                 : {}
Kernel Options (Post Install)  : {}
Management Classes             : []
Management Parameters          : <<inherit>>
Name Servers                   : []
Name Servers Search Path       : []
Next Server Override           : <<inherit>>
Owners                         : ['admin']
Parent Profile                 : 
Proxy                          : 
Red Hat Management Key         : <<inherit>>
Repos                          : []
Server Override                : <<inherit>>
Template Files                 : {}
Virt Auto Boot                 : 1
Virt Bridge                    : xenbr0
Virt CPUs                      : 1
Virt Disk Driver Type          : raw
Virt File Size(GB)             : 5
Virt Path                      : 
Virt RAM (MB)                  : 512
Virt Type                      : kvm
```

指定KS：

​        复制ks到/var/lib/cobbler/templates/目录，执行：

> cobbler profile edit --name=c7u6 --autoinstall=centos7.ks

> cobbler profile report --name=c7u6  | grep Automatic

```
Automatic Installation Template : centos7.ks
Automatic Installation Metadata : {}
```

内核参数：

> cobbler distro edit --name=XXX-x86_64 --kernel-options="inst.ks=ftp://172.16.0.3/tools/kickstart/centos7u6_ks_legacy.cfg inst.repo=nfs:172.16.0.2:/install/centos7u6 vga=791 scsi_mod.scan=sync inst.sshd ksdevice=bootif nouveau.modeset=0"
>
> cobbler profile edit --name=XXX-x86_64 --kernel-options="inst.ks=ftp://172.16.0.3/tools/kickstart/centos7u6_ks_legacy.cfg inst.repo=nfs:172.16.0.2:/install/centos7u6 vga=791 scsi_mod.scan=sync inst.sshd ksdevice=bootif nouveau.modeset=0"

同步：

>  cobbler distro list
>  cobbler system list



#### 手动添加/导入系统镜像

添加distro：

> cobbler distro add --name=CentOS8U2-Manual --arch=x86_64 --kernel=/mnt/images/pxeboot/vmlinuz --initrd=/mnt/images/pxeboot/initrd.img

添加profile：

> cobbler profile add --name=M1 --distro=CentOS8U2-Manual --kernel-options=""

编辑profile

> cobbler profile edit --name=M1 --distro=CentOS8U2-Manual --kernel-options="inst.ks=ftp://172.16.0.3/tools/kickstart/ks.cfg"         

删除profile

> cobbler profile remove --name=M1

删除distro

> cobbler distro remove --name=CentOS8U2-Manual


#### 节点安装指定系统

> cobbler system add --name=C7U6-x86_64 --mac=00:0c:29:13:8d:1d --profile=c7u6 --ip-address=172.16.0.109 --subnet=255.255.0.0 --gateway=172.16.0.11 --interface=ens224 --static=1 --hostname=demo1 --name-servers="172.16.0.11"



> cobbler system add --name=CentOS8U2-Manual-Auto --mac=00:0c:29:10:44:9e --profile=CentOS8U2
>
> cobbler system add --name=CentOS7U6-Auto --mac=00:0c:29:13:8d:1d --profile=C7u6-x86_64  

> cobbler system list

```
   CentOS8u2-Manual-Auto
```

> cobbler system report --name=CentOS8u2-Manual-Auto

```
Name                           : CentOS8u2-Manual-Auto
Automatic Installation Template : <<inherit>>
Automatic Installation Template Metadata : {}
TFTP Boot Files                : {}
Boot loader                    : <<inherit>>
Comment                        : 
Enable gPXE?                   : <<inherit>>
Fetchable Files                : {}
DHCP Filename Override         : <<inherit>>
```



## API 操作

* XMLRPC

  ```
  RPC（Remote Procedure Call）就是相当于提供了一种“远程接口”来供外部系统调用，常用于不同平台、不同架构的系统之间互相调用。
  XML-RPC（RPCXML Remote Procedure Call）是通过HTTP传输XML来实现远程过程调用的RPC，因为是基于HTTP、并且使用XML文本的方式传输命令和数据，所以兼容性更好，能够跨域不同的操作系统、不同的编程语言进行远程过程调用。
  
  ```

* Doc

  ```
  http://www.cobblerd.org/manuals/developer/3_-_Xmlrpc.html
  ```


* Java实现示例

  ```java
  String RPC_SERVER = String.format("http://%s/cobbler_api", this.ip);
  
  XmlRpcClient client = new XmlRpcClient();
  
  // RPC Client
  XmlRpcClientConfigImpl clientConfig = new XmlRpcClientConfigImpl();
  clientConfig.setServerURL(new URL(RPC_SERVER));
  client.setConfig(clientConfig);
  
  /**
  * 获取所有system
  * 每个system对应一个节点的系统安装配置；
  * command:
  *	cobbler system add --name=CentOS7U6-Auto --mac=00:0c:29:13:8d:1d --profile=C7u6-x86_64
  */
  log.info("\n\nProfiles:");
  result = (Object[]) client.execute("get_systems", params);
  for (Object value: result) {
      log.info(value.toString());
  }
  
  // 使用账户获取token
  Vector<String> loginParams = new Vector<>();
  loginParams.addElement("cobbler");
  loginParams.addElement("cobbler");
  Object token = client.execute("login", loginParams);
  
  // 查找system
  HashMap<String, String> criteria = new HashMap();
  criteria.put("name", "CentOS8u2-Manual-Auto");
  Object[] findResult = (Object[]) client.execute("find_system", Arrays.asList(criteria, true, token));
  for (Object value: findResult) {
      Map system = (Map) value;
      log.info((String) system.get("name"));
      log.info(value.toString());
  }
  // 添加system
  HashMap<String, String> inter = new HashMap();
  inter.put("ipaddress-eth0", "172.16.0.102");
  inter.put("macaddress-eth0", "00:0c:29:13:8d:1d");
  log.info(inter.toString());
  Object object_id = (Object) client.execute("new_system", Collections.singletonList(token));
  log.info(String.valueOf(object_id));
  client.execute("modify_system", Arrays.asList(object_id, "name", "SLES12SP4-Auto", token));
  client.execute("modify_system", Arrays.asList(object_id, "modify_interface", inter, token));
  client.execute("modify_system", Arrays.asList(object_id, "profile", "SLES12SP4-x86_64", token));
  client.execute("save_system", Arrays.asList(object_id, token));
  
  // 删除system
  Vector<String> removeParams = new Vector<>();
  removeParams.addElement("CentOS7U6-Auto");
  removeParams.addElement((String) token);
  Object hasRemove = client.execute("remove_system", removeParams);
  log.info(hasRemove.toString());
  ```



## WEB UI

#### 配置



#### 运行





## FAQ

* make rpms错误？

  ```
  pip3 install future
  pip3 install distro
  pip3 install sphinx
  pip3 install Coverage
  ```



* Traceback (most recent call last): ...... from _sqlite3 import *

  ```
  yum install libsqlite3x-devel.x86_64
  
  重新编译Python
  ./configure --prefix=/usr/local/python371 --enable-optimizations  --enable-loadable-sqlite-extensions
  
  make altinstall
  
  ```

* error: invalid command 'bdist_wheel'

  ```
  pip3 install wheel
  pip3 install --upgrade setuptools
  ```

* tcpdump

  ```
  tcpdump -i ens224 port 69
  ```

  ![1599566213153](C:\Users\ft\AppData\Roaming\Typora\typora-user-images\1599566213153.png)

* yum download rpms

  > yum install yum-utils
  >
  > yumdownloader createrepo_c dnf-plugins-core python36-dns python36-ldap3 ......

* httpd does not appear to be running and proxying Cobbler, or SELinux is in the way. Original traceback:

  ```
  <virtualhost *:443>
    ...
    SSLEngine on
    SSLCertificateFile /etc/pki/tls/certs/localhost.crt
    SSLCertificateKeyFile /etc/pki/tls/private/localhost.key
  </virtualhost>
  ```




## 配置文件示例

v3.2

```
---
# cobbler settings file
# restart cobblerd and run "cobbler sync" after making changes
# This config file is in YAML 1.0 format
# see http://yaml.org
# ==========================================================
# if 1, cobbler will allow insertions of system records that duplicate
# the --dns-name information of other system records.  In general,
# this is undesirable and should be left 0.
allow_duplicate_hostnames: 0

# if 1, cobbler will allow insertions of system records that duplicate
# the ip address information of other system records.  In general,
# this is undesirable and should be left 0.
allow_duplicate_ips: 0

# if 1, cobbler will allow insertions of system records that duplicate
# the mac address information of other system records.  In general,
# this is undesirable.
allow_duplicate_macs: 0

# if 1, cobbler will allow settings to be changed dynamically without
# a restart of the cobblerd daemon. You can only change this variable
# by manually editing the settings file, and you MUST restart cobblerd
# after changing it.
allow_dynamic_settings: 0

# by default, installs are *not* set to send installation logs to the cobbler
# server.  With 'anamon_enabled', automatic installation templates may use
# the pre_anamon snippet to allow remote live monitoring of their installations
# from the cobbler server.  Installation logs will be stored under
# /var/log/cobbler/anamon/.  NOTE: This does allow an xmlrpc call to send logs
# to this directory, without authentication, so enable only if you are
# ok with this limitation.
anamon_enabled: 0

# If using authn_pam in the modules.conf, this can be configured
# to change the PAM service authentication will be tested against.
# The default value is "login".
authn_pam_service: "login"

# How long the authentication token is valid for, in seconds
auth_token_expiration: 3600

# this is a directory of files that cobbler uses to make
# templating easier.  See the Wiki for more information.  Changing
# this directory should not be required.
autoinstall_snippets_dir: /var/lib/cobbler/snippets
autoinstall_templates_dir: /var/lib/cobbler/templates

# location of templates used for boot loader config generation
boot_loader_conf_template_dir: "/etc/cobbler/boot_loader_conf"

# Email out a report when cobbler finishes installing a system.
# enabled: set to 1 to turn this feature on
# sender: optional
# email: which addresses to email
# smtp_server: used to specify another server for an MTA
# subject: use the default subject unless overridden
build_reporting_enabled: 0
build_reporting_sender: ""
build_reporting_email: [ 'root@localhost' ]
build_reporting_smtp_server: "localhost"
build_reporting_subject: ""
build_reporting_ignorelist: [ "" ]

# If cache_enabled is 1, a cache will keep converted records in memory to make checking them faster.  This helps with
# use cases like writing out large numbers of records.  There is a known issue with cache and remote XMLRPC API calls.
# If you will use Cobbler with config management or infrastructure-as-code tools such as Terraform, it is recommended
# to disable by setting to 0.
cache_enabled: 1

# Cheetah-language autoinstall templates can import Python modules.
# while this is a useful feature, it is not safe to allow them to
# import anything they want. This whitelists which modules can be
# imported through Cheetah.  Users can expand this as needed but
# should never allow modules such as subprocess or those that
# allow access to the filesystem as Cheetah templates are evaluated
# by cobblerd as code.
cheetah_import_whitelist:
 - "random"
 - "re"
 - "time"
 - "netaddr"

# Default createrepo_flags to use for new repositories. If you have
# createrepo >= 0.4.10, consider "-c cache --update -C", which can
# dramatically improve your "cobbler reposync" time.  "-s sha"
# enables working with Fedora repos from F11/F12 from EL-4 or
# EL-5 without python-hashlib installed (which is not available
# on EL-4)
createrepo_flags: "-c cache -s sha"

# if no autoinstall template is specified to profile add, use this template
default_autoinstall: /var/lib/cobbler/autoinstall_templates/default.ks

# configure all installed systems to use these nameservers by default
# unless defined differently in the profile.  For DHCP configurations
# you probably do /not/ want to supply this.
default_name_servers: []
default_name_servers_search: []

# if using the authz_ownership module (see the Wiki), objects
# created without specifying an owner are assigned to this
# owner and/or group.  Can be a comma seperated list.
default_ownership:
 - "admin"

# cobbler has various sample automatic installation templates stored
# in /var/lib/cobbler/autoinstall_templates/.  This controls
# what install (root) password is set up for those
# systems that reference this variable.  The factory
# default is "cobbler" and cobbler check will warn if
# this is not changed.
# The simplest way to change the password is to run
# openssl passwd -1
# and put the output between the "" below.
default_password_crypted: "$1$mF86/UHC$WvcIcX2t6crBz2onWxyac."

# the default template type to use in the absence of any
# other detected template. If you do not specify the template
# with '#template=<template_type>' on the first line of your
# templates/snippets, cobbler will assume try to use the
# following template engine to parse the templates.
#
# Current valid values are: cheetah, jinja2
default_template_type: "cheetah"

# for libvirt based installs in koan, if no virt bridge
# is specified, which bridge do we try?  For EL 4/5 hosts
# this should be xenbr0, for all versions of Fedora, try
# "virbr0".  This can be overriden on a per-profile
# basis or at the koan command line though this saves
# typing to just set it here to the most common option.
default_virt_bridge: xenbr0

# use this as the default disk size for virt guests (GB)
default_virt_file_size: 5

# use this as the default memory size for virt guests (MB)
default_virt_ram: 512

# if koan is invoked without --virt-type and no virt-type
# is set on the profile/system, what virtualization type
# should be assumed?  Values: xenpv, xenfv, qemu, vmware
# (NOTE: this does not change what virt_type is chosen by import)
default_virt_type: xenpv

# enable gPXE booting? Enabling this option will cause cobbler
# to copy the undionly.kpxe file to the tftp root directory,
# and if a profile/system is configured to boot via gpxe it will
# chain load off pxelinux.0.
# Default: 0
enable_gpxe: 0

# controls whether cobbler will add each new profile entry to the default
# PXE boot menu.  This can be over-ridden on a per-profile
# basis when adding/editing profiles with --enable-menu=0/1.  Users
# should ordinarily leave this setting enabled unless they are concerned
# with accidental reinstalls from users who select an entry at the PXE
# boot menu.  Adding a password to the boot menus templates
# may also be a good solution to prevent unwanted reinstallations
enable_menu: 1

# change this port if Apache is not running plaintext on port
# 80.  Most people can leave this alone.
http_port: 80

# kernel options that should be present in every cobbler installation.
# kernel options can also be applied at the distro/profile/system
# level.
kernel_options: {}

# configuration options if using the authn_ldap module. See the
# the Wiki for details.  This can be ignored if you are not using
# LDAP for WebUI/XMLRPC authentication.
ldap_server: "ldap.example.com"
ldap_base_dn: "DC=example,DC=com"
ldap_port: 389
ldap_tls: 1
ldap_anonymous_bind: 1
ldap_search_bind_dn: ''
ldap_search_passwd: ''
ldap_search_prefix: 'uid='
ldap_tls_cacertfile: ''
ldap_tls_keyfile: ''
ldap_tls_certfile: ''

# cobbler has a feature that allows for integration with config management
# systems such as Puppet.  The following parameters work in conjunction with
# --mgmt-classes  and are described in furhter detail at:
# https://github.com/cobbler/cobbler/wiki/Using-cobbler-with-a-configuration-management-system
mgmt_classes: []
mgmt_parameters:
 from_cobbler: 1

# if enabled, this setting ensures that puppet is installed during
# machine provision, a client certificate is generated and a
# certificate signing request is made with the puppet master server
puppet_auto_setup: 0

# when puppet starts on a system after installation it needs to have
# its certificate signed by the puppet master server. Enabling the
# following feature will ensure that the puppet server signs the
# certificate after installation if the puppet master server is
# running on the same machine as cobbler. This requires
# puppet_auto_setup above to be enabled
sign_puppet_certs_automatically: 0

# location of the puppet executable, used for revoking certificates
puppetca_path: "/usr/bin/puppet"

# when a puppet managed machine is reinstalled it is necessary to
# remove the puppet certificate from the puppet master server before a
# new certificate is signed (see above). Enabling the following
# feature will ensure that the certificate for the machine to be
# installed is removed from the puppet master server if the puppet
# master server is running on the same machine as cobbler. This
# requires puppet_auto_setup above to be enabled
remove_old_puppet_certs_automatically: 0

# choose a --server argument when running puppetd/puppet agent during autoinstall
#puppet_server: 'puppet'

# let cobbler know that you're using a newer version of puppet
# choose version 3 to use: 'puppet agent'; version 2 uses status quo: 'puppetd'
#puppet_version: 2

# choose whether to enable puppet parameterized classes or not.
# puppet versions prior to 2.6.5 do not support parameters
#puppet_parameterized_classes: 1

# set to 1 to enable Cobbler's DHCP management features.
# the choice of DHCP management engine is in /etc/cobbler/modules.conf
manage_dhcp: 0

# set to 1 to enable Cobbler's DNS management features.
# the choice of DNS mangement engine is in /etc/cobbler/modules.conf
manage_dns: 0

# set to path of bind chroot to create bind-chroot compatible bind
# configuration files.  This should be automatically detected.
bind_chroot_path: ""

# set to the ip address of the master bind DNS server for creating secondary
# bind configuration files
bind_master: 127.0.0.1

# set to 1 to enable Cobbler's TFTP management features.
# the choice of TFTP mangement engine is in /etc/cobbler/modules.conf
manage_tftpd: 1

# This variable contains the location of the tftpboot directory. If this directory is not present cobbler does not
# start.
# Default: /srv/tftpboot
tftpboot_location: "/srv/tftpboot"

# set to 1 to enable Cobbler's RSYNC management features.
manage_rsync: 0

# if using BIND (named) for DNS management in /etc/cobbler/modules.conf
# and manage_dns is enabled (above), this lists which zones are managed
# See the Wiki (https://github.com/cobbler/cobbler/wiki/Dns-management) for more info
manage_forward_zones: []
manage_reverse_zones: []

# if using cobbler with manage_dhcp, put the IP address
# of the cobbler server here so that PXE booting guests can find it
# if you do not set this correctly, this will be manifested in TFTP open timeouts.
next_server: 127.0.0.1

# settings for power management features.  optional.
# see https://github.com/cobbler/cobbler/wiki/Power-management to learn more
# choices (refer to codes.py):
#    apc_snmp bladecenter bullpap drac ether_wake ilo integrity
#    ipmilan ipmitool lpar rsa virsh wti
power_management_default_type: 'ipmitool'

# if this setting is set to 1, cobbler systems that pxe boot
# will request at the end of their installation to toggle the
# --netboot-enabled record in the cobbler system record.  This eliminates
# the potential for a PXE boot loop if the system is set to PXE
# first in it's BIOS order.  Enable this if PXE is first in your BIOS
# boot order, otherwise leave this disabled.   See the manpage
# for --netboot-enabled.
pxe_just_once: 1

# if this setting is set to one, triggers will be executed when systems
# will request to toggle the --netboot-enabled record at the end of their installation.
nopxe_with_triggers: 1

# This setting is only used by the code that supports using Spacewalk/Satellite
# authentication within Cobbler Web and Cobbler XMLRPC.
redhat_management_server: "xmlrpc.rhn.redhat.com"

# if using authn_spacewalk in modules.conf to let cobbler authenticate
# against Satellite/Spacewalk's auth system, by default it will not allow per user
# access into Cobbler Web and Cobbler XMLRPC.
# in order to permit this, the following setting must be enabled HOWEVER
# doing so will permit all Spacewalk/Satellite users of certain types to edit all
# of cobbler's configuration.
# these roles are:  config_admin and org_admin
# users should turn this on only if they want this behavior and
# do not have a cross-multi-org seperation concern.  If you have
# a single org in your satellite, it's probably safe to turn this
# on and then you can use CobblerWeb alongside a Satellite install.
redhat_management_permissive: 0

# specify the default Red Hat authorization key to use to register
# system.  If left blank, no registration will be attempted.  Similarly
# you can set the --redhat-management-key to blank on any system to
# keep it from trying to register.
redhat_management_key: ""

# if set to 1, allows /usr/bin/cobbler-register (part of the koan package)
# to be used to remotely add new cobbler system records to cobbler.
# this effectively allows for registration of new hardware from system
# records.
register_new_installs: 0

# Flags to use for yum's reposync.  If your version of yum reposync
# does not support -l, you may need to remove that option.
reposync_flags: "-l -n -d"

# Flags to use for rysync's reposync. If flag 'a' is used then createrepo
# is not ran after the rsync
reposync_rsync_flags: "-rltDv --copy-unsafe-links"

# when DHCP and DNS management are enabled, cobbler sync can automatically
# restart those services to apply changes.  The exception for this is
# if using ISC for DHCP, then omapi eliminates the need for a restart.
# omapi, however, is experimental and not recommended for most configurations.
# If DHCP and DNS are going to be managed, but hosted on a box that
# is not on this server, disable restarts here and write some other
# script to ensure that the config files get copied/rsynced to the destination
# box.  This can be done by modifying the restart services trigger.
# Note that if manage_dhcp and manage_dns are disabled, the respective
# parameter will have no effect.  Most users should not need to change
# this.
restart_dns: 1
restart_dhcp: 1

# install triggers are scripts in /var/lib/cobbler/triggers/install
# that are triggered in autoinstall pre and post sections.  Any
# executable script in those directories is run.  They can be used
# to send email or perform other actions.  They are currently
# run as root so if you do not need this functionality you can
# disable it, though this will also disable "cobbler status" which
# uses a logging trigger to audit install progress.
run_install_triggers: 1

# enables a trigger which version controls all changes to /var/lib/cobbler
# when add, edit, or sync events are performed.  This can be used
# to revert to previous database versions, generate RSS feeds, or for
# other auditing or backup purposes. "git" and "hg" are currently suported,
# but git is the recommend SCM for use with this feature.
scm_track_enabled: 0
scm_track_mode: "git"
scm_track_author: "cobbler <cobbler@localhost>"
scm_push_script: "/bin/true"

# this is the address of the cobbler server -- as it is used
# by systems during the install process, it must be the address
# or hostname of the system as those systems can see the server.
# if you have a server that appears differently to different subnets
# (dual homed, etc), you need to read the --server-override section
# of the manpage for how that works.
server: 127.0.0.1

# If set to 1, all commands will be forced to use the localhost address
# instead of using the above value which can force commands like
# cobbler sync to open a connection to a remote address if one is in the
# configuration and would traceback.
client_use_localhost: 0

# If set to 1, all commands to the API (not directly to the XMLRPC
# server) will go over HTTPS instead of plaintext. Be sure to change
# the http_port setting to the correct value for the web server
client_use_https: 0

# should new profiles for virtual machines default to auto booting with
# the physical host when the physical host reboots?
# this can be overridden on each profile or system object.
virt_auto_boot: 1

# cobbler's web directory.  Don't change this setting -- see the
# Wiki on "relocating your cobbler install" if your /var partition
# is not large enough.
webdir: /srv/www/cobbler

# directories that will not get wiped and recreated on a 'cobbler sync'
webdir_whitelist:
  - misc
  - web
  - webui
  - localmirror
  - repo_mirror
  - distro_mirror
  - images
  - links
  - pub
  - repo_profile
  - repo_system
  - svc
  - rendered
  - .link_cache

# cobbler's public XMLRPC listens on this port.  Change this only
# if absolutely needed, as you'll have to start supplying a new
# port option to koan if it is not the default.
xmlrpc_port: 25151

# "cobbler repo add" commands set cobbler up with repository
# information that can be used during autoinstall and is automatically
# set up in the cobbler autoinstall templates.  By default, these
# are only available at install time.  To make these repositories
# usable on installed systems (since cobbler makes a very convenient
# mirror) set this to 1.  Most users can safely set this to 1.  Users
# who have a dual homed cobbler server, or are installing laptops that
# will not always have access to the cobbler server may wish to leave
# this as 0.  In that case, the cobbler mirrored yum repos are still
# accessable at http://cobbler.example.org/cblr/repo_mirror and yum
# configuration can still be done manually.  This is just a shortcut.
yum_post_install_mirror: 1

# the default yum priority for all the distros.  This is only used
# if yum-priorities plugin is used.  1=maximum.  Tweak with caution.
yum_distro_priority: 1

# Flags to use for yumdownloader.  Not all versions may support
# --resolve.
yumdownloader_flags: "--resolve"

# sort and indent JSON output to make it more human-readable
serializer_pretty_json: 0

# replication rsync options for distros, autoinstalls, snippets set to override default value of "-avzH"
replicate_rsync_options: "-avzH"

# replication rsync options for repos set to override default value of "-avzH"
replicate_repo_rsync_options: "-avzH"

# always write DHCP entries, regardless if netboot is enabled
always_write_dhcp_entries: 0

# external proxy - used by: get-loaders, reposync, signature update
# eg: proxy_url_ext: "http://192.168.1.1:8080" (HTTP)
# or: proxy_url_ext: "https://192.168.1.1:8443" (HTTPS)
proxy_url_ext: ""

# internal proxy - used by systems to reach cobbler for templates
# eg: proxy_url_int: "http://10.0.0.1:8080"
proxy_url_int: ""

# this is a directory of files that cobbler uses to include
# files into Jinja2 templates
#jinja2_includedir: /var/lib/cobbler/jinja2

# Up to now, cobblerd used $server's IP address instead of the DNS name in autoinstallation
# file settings (pxelinux.cfg files) to save bytes, which seemed required for S/390 systems.
# This behavior can have negative impact on installs with multi-homed cobbler servers, because
# not all of the IP addresses may be reachable during system install.
# This behavior was now made conditional, with default being "off".
#convert_server_to_ip: 0

# include other configuration snippets
include: [ "/etc/cobbler/settings.d/*.settings" ]

```



