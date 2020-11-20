# SIMS PXE服务器配置说明



## 简介

​	PXE服务器配置管理基于Cobbler进行定制了修改，TFTP服务的相关配置方式不再是直接修改配置文件，而是使用cobbler命令代替。

​	由于很多系统启动文件vmlinuz和initrd都是经过了定制修改，所有需要将原生镜像和内核文件分开管理。为了同步方便，初步设想将所有系统的内核文件置于FTP目录中，以一定的方式推送到所有的PXE服务器节点。

​	主要关注**系统配置封装脚本**即可。



## 目录

#### FTP服务器

/var/ftp/install

镜像目录

​	centos7u6

​	centos7u6hygon

​	......

内核文件目录 （对应不同平台的操作系统）

​	tftpboot

​		ft

​		lx

​		x86_64



#### PXE服务器

镜像源NFS目录

​	/install				镜像目录

​	/install/tftpboot		内核文件，同步自FTP服务器/var/ftp/install/tftpboot/目录



TFTP服务根目录

​	/var/lib/tftpboot		TFTP服务器工作目录。程序自动生成，可以查看内容是否正确，但不要修改



## 常用指令

```
cobbler list          列出所有的cobbler元素

cobbler distro        查看导入的发行版系统信息
   add
   copy
   edit
   find
   list
   remove
   rename
   report

cobbler profile       查看配置信息
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



## 系统配置原生指令

（仅作参考）

* 添加发行版

  名称：ABC 	（最后显示在系统安装引导界面）

  架构：x86_64

  内核文件路径：xxx/vmlinuz，xxx/initrd.img

```shell
cobbler distro add --name=ABC --arch=x86_64 --kernel=/mnt/images/pxeboot/vmlinuz --initrd=/mnt/images/pxeboot/initrd.img
cobbler profile add --name=ABC --distro=ABC --kernel-options="inst.ks=ftp://xxx.cfg inst.repo=nfs:xxx/ true vga=791 inst.sshd ksdevice=bootif nouveau.modeset=0"
```

* 删除发行版

  需要先删除profile，再删除distro

```
cobbler profile remove --name=ABC
cobbler distro remove --name=ABC
```



## 系统配置封装脚本

#### 路径

​	**/install/sims**



#### 导入指定系统

* 文件

  single.sh

* 步骤1

  假设新系统名称 为ABC，x86架构机器。

  在目录/install/tftpboot/x86_64/下创建ABC，拷贝{vmlinuz, initrd.img}到ABC下。

* 步骤2

  修改single.sh ，对应的不同架构，取消行注释#；

  x86_64

  ```
  MIX_NAME="ABC"
  ImportDistroX86_64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
  ImportProfile "${MIX_NAME}" "${MIX_NAME}" "inst.ks=xxx"
  ```

  ARM / 龙芯

  ```
  MIX_NAME="ABC"
  ImportDistroMips64el "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
  ImportProfile "${MIX_NAME}" "${MIX_NAME}" "nfsroot=xxx"
  ```

  MIPS / 飞腾

  ```
  MIX_NAME="ABC"
  ImportDistroAarch64 "${MIX_NAME}" "${MIX_NAME}" "vmlinuz" "initrd.img"
  ImportProfile "${MIX_NAME}" "${MIX_NAME}" "nfsroot=xxx"
  ```

  MIX_NAME是系统名称，显示在引导菜单上，同时也是/install/tftpboot/x86_64/下创建的文件夹目录的名字。如果系统名称和文件夹名称不系统也可以进行修改，但直接这样约定最为简便。

* 步骤3

  执行sh single.sh

* 步骤4 可选

  cobbler profile list

  从打印出来的列表中查看系统是否已经存在；



#### 删除指定系统

* 文件

  remove.sh

* 执行结果

  sh remove.sh 

  ```
  ......
  XHB2004010_Phytium_UOS_V20_SP2U1_Desktop
  XHB200488_Phytium_UOS_V20_SP2U2_Desktop
  XHB200517_Phytium_UOS_V20_SP2U1_Desktop
  XSC2003160_BM_loongson_kylin_v10_0704_desktop_240G
  XSX2001500_BM_loongson_kylin_v10_desktop_120G
  XSX2001650_BM_loongson_kylin_v10_0704_desktop_120G
  XZFC200110_BM_loongson_kylin_v10_0704_desktop_240G
  XZFG200520_Loongson_UOS_V20_SP2U1_Desktop
  XZZ200103_BM_loongson_kylin_v10_0907_desktop_120G
  hik-centos7u6
  
  
  Input distro will removed:
  hik-centos7u6
  
  
  Remove ...
  hik-centos7u6
  
  done
  ```


#### 导入所有系统（截至2020/11/20）

​	**import_distro.sh**

​	大部分时候并不需要这样操作，这里会检查系统是否已经存在，已经存在的会自动跳过。



#### 清空所有系统

​	**remove_all.sh**





