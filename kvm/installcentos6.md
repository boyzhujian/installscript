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

## How to use
 
     virt-install \
      --name test \
      --ram 2048 \
      --os-variant rhel6 \
      --disk path=/srv/libvirt/images2/test.img,size=40 \
      --network bridge=br0 \
      --network bridge=br1 \
      --location http://ftp.funet.fi/pub/mirrors/centos.org/6/os/x86_64/ \
      --initrd-inject=/root/ks.cfg \
      --extra-args "ks=file:/ks.cfg console=ttyS0"
