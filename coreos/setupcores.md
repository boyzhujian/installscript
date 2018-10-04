```
brew cask install vagrant
brew cask install virtualbox
git clone https://github.com/coreos/coreos-vagrant/
cd coreos-vagrant
vagrant up
vagrant ssh
```

[https://github.com/jolson88/CoreOS-GettingStarted](https://github.com/jolson88/CoreOS-GettingStarted)






### most simple ### 
boot from cd or pxe
pre wget your imgage from 
https://stable.release.core-os.net/amd64-usr/1855.4.0/
run
coreos-isntall   -d /dev/sda -f coreos_production_vmware_raw_image.bin.bz2

or use mirror site with -i 
or for prewirite cloud-config.yaml
coreos-install -d /dev/sdc -c cloud-config.yaml -i http://httpfile.1h9d.com
