https://docs.docker.com/machine/concepts/
https://docs.docker.com/machine/drivers/


### Install
```
curl -L https://github.com/docker/machine/releases/download/v0.16.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
    chmod +x /tmp/docker-machine &&
    sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
```

 docker-machine create --driver vmwarevsphere  --help

docker-machine-driver-esxi
VBoxManage


docker-machine create --driver virtualbox vbox1


docker-machine create --driver vmwarevsphere  --vmwarevsphere-vcenter  192.168.3.22  --vmwarevsphere-username 'root' --vmwarevsphere-password 'pass' --vmwarevsphere-datastore 'intel' --vmwarevsphere-boot2docker-url http://192.168.3.115:8000/rancheros/rancheros-autoformat.iso   --vmwarevsphere-cloudinit http://192.168.3.115:8000/rancheros/cloud-config.yml  --vmwarevsphere-disk-size "240960"  --vmwarevsphere-memory-size "4096"
rancher47    


   --vmwarevsphere-boot2docker-url                                                                      vSphere URL for boot2docker image [$VSPHERE_BOOT2DOCKER_URL]
   --vmwarevsphere-cfgparam [--vmwarevsphere-cfgparam option --vmwarevsphere-cfgparam option]           vSphere vm configuration parameters (used for guestinfo) [$VSPHERE_CFGPARAM]
   --vmwarevsphere-cloudinit                                                                            vSphere cloud-init file or url to set in the guestinfo [$VSPHERE_CLOUDINIT]
   --vmwarevsphere-cpu-count "2"                                                                        vSphere CPU number for docker VM [$VSPHERE_CPU_COUNT]
   --vmwarevsphere-datacenter                                                                           vSphere datacenter for docker VM [$VSPHERE_DATACENTER]
   --vmwarevsphere-datastore                                                                            vSphere datastore for docker VM [$VSPHERE_DATASTORE]
   --vmwarevsphere-disk-size "20480"                                                                    vSphere size of disk for docker VM (in MB) [$VSPHERE_DISK_SIZE]
   --vmwarevsphere-folder                                                                               vSphere folder for the docker VM. This folder must already exist in the datacenter. [$VSPHERE_FOLDER]
   --vmwarevsphere-hostsystem                                                                           vSphere compute resource where the docker VM will be instantiated. This can be omitted if using a cluster with DRS. [$VSPHERE_HOSTSYSTEM]
   --vmwarevsphere-memory-size "2048"                                                                   vSphere size of memory for docker VM (in MB) [$VSPHERE_MEMORY_SIZE]
   --vmwarevsphere-network [--vmwarevsphere-network option --vmwarevsphere-network option]              vSphere network where the docker VM will be attached [$VSPHERE_NETWORK]
   --vmwarevsphere-password                                                                             vSphere password [$VSPHERE_PASSWORD]
   --vmwarevsphere-pool                                                                                 vSphere resource pool for docker VM [$VSPHERE_POOL]
   --vmwarevsphere-username                                                                             vSphere username [$VSPHERE_USERNAME]
   --vmwarevsphere-vcenter                                                                              vSphere IP/hostname for vCenter [$VSPHERE_VCENTER]
   --vmwarevsphere-vcenter-port "443"