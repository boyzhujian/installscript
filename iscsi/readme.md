
https://my.oschina.net/u/273053/blog/161773

https://www.cnblogs.com/fengyutech/p/4966639.html

yum -y install scsi-target-utils


#tgtadm [OPTION]

--lld=-L 指定设备

--mode=-m 指定模式

--op=-o 指定操作

--tid=-t 指定target的ID号

--initiator-address=-I 指定客户机地址

-b=--backing-store 指定块设备位置

-l=--lun 指定逻辑单元号


/etc/init.d/tgtd start

 tgt-admin --show 

 tgt-admin --dump

 tgtadm --lld iscsi --op new --mode target --tid 1 -T inq.2016-03-27.loony.com:testiscsi.disnk1

 tgtadm --lld iscsi --op show --mode target

 tgtadm --lld iscsi --op new --mode logicalunit --tid 1 --lun 1 -b /dev/sdb
 
tgtadm --lld iscsi --op bind --mode target --tid 1 -I 192.168.8.0/24

 yum install iscsi-initiator-utils

 tgtadm --lld iscsi --op new --mode account --user loony --password loony

 tgtadm --lld iscsi --op bind --mode account --tid 1 --user loony



scsi-target-utils包中的主要配置文件以及命令：
- /etc/tgt/target.conf ： 主要配置文件
- /usr/sbin/tgt-admin ： 在线查询、删除target等功能的命令
- /usr/sbin/tgtd ： 主要提供iscsi target服务的主程序


Iscsi是对应用透明的，以下几种方式可以作为“磁盘”分享出去给initiator使用：
- (1)大型文件(dd命令生成)
- (2) 磁盘阵列、磁盘或者磁盘分区等真实磁盘
- (3)使用LVM中的逻辑卷LV



yum install iscsi-initiator-utils
iscsi-initiator-utils中的主要配置文件以及命令：
- /etc/iscsi/iscsid.conf ： 主要配置文件
- /sbin/iscsid ： 启动iscsi initiator的主要服务程序
- /sbin/iscsiadm ： 管理iscsi initiator的管理程序
- /etc/intit.d/iscsid ： 主要服务进程
- /etc/init.d/iscsi ： 启动该脚本，可以使发现过的iscsi target配置生效，一般直接使用该脚本即可，initiator未执行的话，会调用/etc/init.d/iscsid启动initiator。

iscsiadm -m discovery -t sendtargets -p 192.168.10.1   

iscsiadm -m node

iscsiadm -m session

iscsiadm -m node -T inq.2016-03-27.loony.com:testiscsi.disnk1 -p 192.168.8.11 -l


https://www.server-world.info/en/note?os=Fedora_21&p=iscsi

 yum -y install targetcli




 https://github.com/kubernetes/examples/blob/master/volumes/iscsi/iscsi.yaml