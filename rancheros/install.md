https://linuxhint.com/install_rancher_os/

If you’re using Linux, then you can use the dd command to make a bootable USB of Rancher OS as follows:
$ sudo dd if=~/Downloads/rancheros.iso of=/dev/sdX bs=1M

NOTE: Here, sdX is the USB thumb drive. You can find out what it is with the lsblk command.

ros config validate

ros isntall -c cloud-config.yml -d /dev/sda


cloud-config.yml
```
#cloud-config
hostname: rancher-00017
rancher:
 network:
  interfaces:
   eth0:
    address: 192.168.3.47/24
    gateway: 192.168.3.1
    dhcp: false
  dns:
   nameservers:
    - 192.168.3.10
    - 8.8.8.8

ssh_authorized_keys:
 - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDH7zAv5VDa7o06uWYM145RlH3Y9DcGjbxu1Ivclstw47i2wZkQuFB2ruMgcq8W8m+LZaoWQEQH3BMn2hQsqbweCBzKTSlP38jsig94Crt2oHbErrteu7mCiY2tkQqK/o0YRBldEj5EbSMHVYbm2VYI3fiSI3IsSZqYXSMXdCp3WAtKC9TJF06lrrZI1j2UxVu4wi8B3S8uNILn635NyNJvjWABEHzwr8FKHbEX0p5p3CG0DJZsNikUyAwnkepTGPJcJTp3NU58+Aq+KvHBVazKp/GQb1WdfICrphoqn8QhdvPeXMXxzK3s+KZxPQTtZKvcn0H1wCF27MEDnyn4g16j root@infragui.home.damon

```

https://rancher.com/docs/os/v1.2/en/running-rancheros/workstation/docker-machine/
$ docker-machine create -d virtualbox --virtualbox-boot2docker-url <LOCATION-OF-RANCHEROS-ISO> <MACHINE-NAME>
$ docker-machine create -d virtualbox --virtualbox-boot2docker-url https://releases.rancher.com/os/latest/rancheros.iso <MACHINE-NAME>

docker-machine ssh <MACHINE-NAME>