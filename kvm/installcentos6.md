# Minimal kickstart installation locally

## kickstart file

    keyboard fi
    lang en_US.UTF-8
    timezone --utc Europe/Helsinki
    zerombr
    install
    reboot

    ignoredisk --only-use=vda
    clearpart --drive=vda --initlabel
    part /boot --asprimary --fstype="ext4" --size=200
    part swap --size=2000
    part / --size=1 --fstype="ext4" --grow
    bootloader --location=mbr --driveorder=sda --append="elevator=deadline"
    
    %packages
    @core
    @base
    %end

## How to use  notwork
 
       virt-install \
      --name test \
      --vcpus=1 \
      --check-cpu \
      --accelerate \
      --ram 1024 \
      --os-variant rhel7 \
      --disk path=/mnt/disk2/virshimg/mycentos7two,size=40 \
      --network bridge=virbr0 \
      --location http://mirror.airenetworks.es/CentOS/7/os/x86_64/ \
      --initrd-inject=/root/ks.cfg \
      --extra-args "ks=file:/ks.cfg  console=tty0 console=ttyS0,115200"
