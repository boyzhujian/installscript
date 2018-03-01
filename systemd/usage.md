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
