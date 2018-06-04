yum install qemu-kvm qemu-img virt-manager libvirt libvirt-python libvirt-client virt-install virt-viewer bridge-utils
systemctl start libvirtd
systemctl enable libvirtd


qemu-img create -f qcow2 mycentos7min 20G


virt-install   
--name=mycentos7min   --vcpus=1   --ram 1024         
--disk path=/mnt/disk2/virshimg/mycentos7min,format=qcow2         --check-cpu   --accelerate   
--graphics  vnc    --os-type linux   --cdrom /mnt/disk2/iso/CentOS-7-x86_64-Minimal-1804.iso

