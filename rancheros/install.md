https://linuxhint.com/install_rancher_os/

If you’re using Linux, then you can use the dd command to make a bootable USB of Rancher OS as follows:
$ sudo dd if=~/Downloads/rancheros.iso of=/dev/sdX bs=1M

NOTE: Here, sdX is the USB thumb drive. You can find out what it is with the lsblk command.


cloud-config.yml
```
#cloud-config
 
rancher:
network:
interfaces:
eth0:
address: 192.168.2.6/24
gateway: 192.168.2.1
dhcp: false
dns:
nameservers:
- 192.168.2.1
- 8.8.8.8
 
ssh_authorized_keys:
- <Replace this with the contents of the `cat ~/.ssh/id_rsa.pub` command>
```
