system-config-lvm

pvcreate
physical volume   

volume group
VG

logical volume
vgcreate




pvcreate
vgcreate
lvcreate
lvconvert

On Debian using lvm2

Install lvm2 using sudo apt-get install lvm2 and start it using /etc/init.d/lvm2 start

List all the volumes using lsblk

create physical volumes

/sbin/pvcreate <volume from prev list>
then to list the volumes use /sbin/lvmdiskscan

Create a volume group /sbin/vgcreate <name> /dev/vdb
Format the vg /sbin/mkfs.ext4 /dev/mapper/Vol_group

change fstab if you want to map this vg to some filesystem

/dev/mapper/vg /var/lib/folder ext4 rw,user 
mount the volume using mount -a


https://github.com/LINBIT/docker/blob/master/docs/userguide/storagedriver/device-mapper-driver.md
