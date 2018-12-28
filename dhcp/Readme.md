 /etc/dhcp/dhcpd.conf  
 /etc/dhcpd.conf


default-lease-time 600;
max-lease-time 7200;
option subnet-mask 255.255.255.0;
option broadcast-address 192.168.1.255;
option routers 192.168.1.254;
option domain-name-servers 192.168.1.1, 192.168.1.2;
option domain-name "mydomain.example";

subnet 192.168.1.0 netmask 255.255.255.0 {
range 192.168.1.10 192.168.1.100;
range 192.168.1.150 192.168.1.200;
} 




service isc-dhcp-server restart
service isc-dhcp-server start
service isc-dhcp-server stop 



/var/lib/dhcp/dhcpd.leases


UI
https://github.com/Akkadius/glass-isc-dhcp
