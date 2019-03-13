- route
- ip route
- ip route add 192.30.255.112 via 173.39.230.1 dev eth1
-  /etc/sysconfig/network-scripts/route-eth1     add static route to device
  ```
  218.244.149.165  via 173.39.230.1 dev eth1
  172.217.163.238  via 173.39.230.1 dev eth1
  ```
  
  
- route del default gw <default_gateway_ip>
-  route add default gw <default_gateway_ip>
 -  /etc/sysconfig/network 
```
GATEWAY=<new_default_gateway_ip>

or  with muliple device
GATEWAYDEV=<network_interface>

```
