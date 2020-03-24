how-to-create-and-manage-kvm-virtual-machines-from-cli

https://linuxconfig.org/how-to-create-and-manage-kvm-virtual-machines-from-cli

```
 virt-install --name=linuxconfig-vm \
--vcpus=1 \
--memory=1024 \
--cdrom=/tmp/debian-9.0.0-amd64-netinst.iso \
--disk size=5 \
--os-variant=debian8
```
use osinfo-query os to get  full list of --os-variant
