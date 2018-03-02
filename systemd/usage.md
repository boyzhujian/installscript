systemctl  -h 

if systemctl status   show degraded  
systemctl --failed

example unitfilename w11logs.mount
 systemctl status  unitfilename
 journalctl -xeu unitfilename
 
 
 # file location
 /etc/systemd/system/ 
 
 unit_name.type_extension





# demo
https://github.com/boyzhujian/supervisor-systemd

#example doc
https://www.gunes.io/2017/08/24/systemd-vs-supervisor


# red hat doc

https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system_administrators_guide/sect-managing_services_with_systemd-services
