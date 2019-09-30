dnsmasq --no-daemon --log-queries


[https://blog.csdn.net/nosodeep/article/details/45971677](https://blog.csdn.net/nosodeep/article/details/45971677)


[https://zhuanlan.zhihu.com/p/34607891](https://zhuanlan.zhihu.com/p/34607891)



docker run
https://hub.docker.com/r/jpillora/dnsmasq/



demo  dnsmasq.conf
```
 #dnsmasq config, for a complete example, see:
 #  http://oss.segetech.com/intra/srv/dnsmasq.conf
 #log all dns queries
 log-queries
 #dont use hosts nameservers
 no-resolv
 #use google as default nameservers
 server=8.8.4.4
 server=8.8.8.8
 #serve all .company queries using a specific nameserver
 server=/company/10.0.0.1
 #explicitly define host-ip mappings
 
 address=/myhost.company/10.0.0.2
 
 
 ###dhcp section ####
 
 # Only listen to routers' LAN NIC.  Doing so opens up tcp/udp port 53 to
# localhost and udp port 67 to world:
interface=<LAN-NIC>

# dnsmasq will open tcp/udp port 53 and udp port 67 to world to help with
# dynamic interfaces (assigning dynamic ips). Dnsmasq will discard world
# requests to them, but the paranoid might like to close them and let the 
# kernel handle them:
bind-interfaces

# Dynamic range of IPs to make available to LAN pc
dhcp-range=192.168.111.50,192.168.111.100,12h

# If you’d like to have dnsmasq assign static IPs, bind the LAN computer's
# NIC MAC address:
dhcp-host=aa:bb:cc:dd:ee:ff,192.168.111.50
```

[chinese document dnsmasq](https://wiki.archlinux.org/index.php/Dnsmasq_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))
[docker dnsmasq](https://hub.docker.com/r/jpillora/dnsmasq/)
[sample config ](http://oss.segetech.com/intra/srv/dnsmasq.conf)

