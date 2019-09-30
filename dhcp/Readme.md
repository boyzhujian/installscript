 /etc/dhcp/dhcpd.conf  
 /etc/dhcpd.conf
 
 [https://blog.csdn.net/kebu12345678/article/details/78435642](https://blog.csdn.net/kebu12345678/article/details/78435642)

```
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
```



service isc-dhcp-server restart
service isc-dhcp-server start
service isc-dhcp-server stop 



/var/lib/dhcp/dhcpd.leases


UI
https://github.com/Akkadius/glass-isc-dhcp

[https://blogging.dragon.org.uk/howto-setup-dnsmasq-as-dns-dhcp/](https://blogging.dragon.org.uk/howto-setup-dnsmasq-as-dns-dhcp/)

```
 domain-needed This tells dnsmasq to never pass short names to the upstream DNS servers. If the name is not in the local /etc/hosts file then “not found” will be returned.
bogus-priv All reverse IP (192.168.x.x) lookups that are not found in /etc/hosts will be returned as “no such domain” and not forwarded to the upstream servers.
no-resolv Do not read resolv.conf to find the servers where to lookup dns.
no-poll Do not poll resolv.conf for changes
server=8.8.8.8 Set one or more DNS servers to use when addresses are not local. These are 8.8.8.8 Google DNS server and open DNS server, 208.67.220.220.
local=/example.com/ Our local domain, queries in these domains are answered from /etc/hosts or the static-hosts files.
address=/doubleclick.net/127.0.0.1 Use this force an address for the specified domains. e.g to block adverts forced by doubleclck.net to localhost
no-hosts This options stops dnsmasq using the local /etc/hosts file as a source for lookups .
addn-hosts=/etc/dnsmasq_static_hosts.conf Force dnsmasq to use this file for lookups. It is in the same format as /etc/hosts.
expand_hosts So we can see our local hosts via our home domain without having to repeatedly specify the domain in our /etc/hosts file.
domain This is your local domain name. It will tell the DHCP server which host to give out IP addresses for.
dhcp-range This is the range of IPs that DHCP will serve: 192.168.0.20 to 192.168.0.50, with a lease time of 72 hours. The lease time is how long that IP will be linked to a host. (All most 🙂 )
dhcp-range=tftp,192.168.0.250,192.168.0.255 For tftp connections use this range of IP addresses
dhcp-host=mylaptop,192.168.0.199,36h Any machine saying they are hostname = ‘mylaptop’ gets this IP address
dhcp-option=option:router,192.168.0.1 When a host is requesting an IP address via DHCP also tell it the gateway to use.
dhcp-option=option:ntp-server,192.168.0.5 When a host is requesting an IP address via DHCP also tell it the NTP to use. 
```
