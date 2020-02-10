#!/bin/bash

echo " "
  read -p "Type the Ip Address of ESXI: " ipaddress
  
echo " "
  read -p "Type the Password of ESXI: " password
  
sshpass -p ${password} scp rsync-static root@${ipaddress}:/bin

sshpass -p ${password} scp rsync.xml root@${ipaddress}:/etc/vmware/firewall

sshpass -p ${password} ssh root@${ipaddress}  esxcli network firewall refresh

sshpass -p ${password} ssh root@${ipaddress}  esxcli network firewall ruleset list

sshpass -p ${password} ssh root@${ipaddress}  ln -s /bin/rsync-static /bin/rsync
