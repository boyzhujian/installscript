### how to get ip of  vm when you on the host
- get vm world id
esxcli network vm list  
-  from worldid to mac address
esxcli network vm port list -w  idnumber
- use arp to get ip from mac address
