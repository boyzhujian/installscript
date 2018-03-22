if in centos 7 use systemctl manage dockerd

systemctl edit docker --full

If directive EnvironmentFile is not listed in [Service] block, then no luck (I also have this problem on Centos7), but you can extend standard systemd unit like this:

systemctl edit docker
EnvironmentFile=-/etc/sysconfig/docker
ExecStart=
ExecStart=/usr/bin/dockerd $OPTIONS

And create a file /etc/sysconfig/docker with content:

OPTIONS="-s overlay --storage-opt dm.no_warn_on_loop_devices=true"


# Doc 
https://github.com/LINBIT/docker/blob/master/docs/userguide/storagedriver/device-mapper-driver.md
