

ip link set dev eth0 up
ip addr add dev dev eth0 10.0.0.1/24

ubuntu 
/etc/network/interfaces
ifup eth0

auto generate  
/etc/sysconfig/network-scripts/if-cfg-eth0


for route 
eho net.ipv4.ip_forward=1>/etc/sysctl.conf

ip route add default  via 10.0.0.1


apt-get install isc-dhcp-server
vi /etc/default/isc-dhcp-server

iptables  command 
-A  INPUT|FORARD
-t nat
-i lo|eth0|eth2
-j ACCETP|DROP
-m state  --state  ESTABLISHED,RELATED
-p TCP|UDP  -dport 22
-P
-o


vlan
ip link add link eth0 name eht0.1 type vlan id  1
ip link add link eth0 name eht0.2 type vlan id  2
trunk port will acccept VLAN tagged pakets and will pass them along as appropriate
