https://mohan43u.wordpress.com/2012/08/06/dnsmasq-for-home-user/

```
domain-needed
bogus-priv
no-resolv
server=8.8.8.8
server=8.8.4.4
local=/drunkenmonk.org/
domain=drunkenmonk.org
dhcp-range=interface:br0,192.168.2.2,192.168.2.254,255.255.255.0,1d
mx-host=drunkenmonk.org,mail.drunkenmonk.org,30
cname=drunkenmonk.org,bridge.mokka.drunkenmonk.org
cname=www.drunkenmonk.org,bridge.mokka.drunkenmonk.org
cname=mail.drunkenmonk.org,bridge.mokka.drunkenmonk.org
```
