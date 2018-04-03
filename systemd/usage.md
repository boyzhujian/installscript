#https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system_administrators_guide/sect-managing_services_with_systemd-unit_files
# basic unit file structure
[Unit]
Description="Foo web application"
PartOf=foo.target

[Service]
User=root 
Group=root
Environment=LANG=en_US.UTF-8,LC_ALL=en_US.UTF-8
ExecStart=/home/foo/bin/start_foo

[Install]



# Command
systemctl  -h 

if systemctl status   show degraded  
systemctl --failed

example unitfilename w11logs.mount
 systemctl status  unitfilename
 journalctl -xeu unitfilename
 
 
 # key  file location
 /etc/systemd/system/ 
 /usr/lib/systemd/system/
 
 unit_name.type_extension





# demo
https://github.com/boyzhujian/supervisor-systemd

#example doc
https://www.gunes.io/2017/08/24/systemd-vs-supervisor


# red hat doc

https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system_administrators_guide/sect-managing_services_with_systemd-services
