yum install qemu-kvm qemu-img virt-manager libvirt libvirt-python libvirt-client virt-install virt-viewer bridge-utils
systemctl start libvirtd
systemctl enable libvirtd


qemu-img create -f qcow2 mycentos7min 20G

graphic install
virt-install    \
--name=mycentos7min   --vcpus=1   --ram 1024        \ 
--disk path=/mnt/disk2/virshimg/mycentos7min,format=qcow2         --check-cpu   --accelerate   \
--graphics  vnc    --os-type linux   --cdrom /mnt/disk2/iso/CentOS-7-x86_64-Minimal-1804.iso \



text install

virt-install --name=centos \
--memory=1024 --vcpus=2 \
--location=/mnt/disk2/iso/CentOS-7-x86_64-Minimal-1804.iso \
--disk /var/lib/libvirt/images/centos7.qcow2,device=disk,bus=virtio,size=8 \
--os-type=linux  \
--nographics \
--extra-args='console=tty0 console=ttyS0,115200n8 serial'
--network bridge:br0 \

ks file install
virt-install \
  --name=centos \
  --vcpus=1\
  --ram 1024 \
	--disk path=/mnt/disk2/virshimg/mycentos7two,format=qcow2 \
	--check-cpu \
  --accelerate \
  --nographics \
  --os-type linux \
  --location=/mnt/disk2/tmp  \
	--initrd-inject=/mnt/disk2/iso/mycentos7.ks \
--extra-args="ks=file://mnt/disk2/iso/mycentos7.ks"


[https://linux.die.net/man/1/virt-install](https://linux.die.net/man/1/virt-install)
[virtinstall scritp ](https://github.com/johnbarneta/virt-install-scripts/blob/master/virt-install-centos)


