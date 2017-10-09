
# command
```
consul agent 
-config-file=/export/home/jiazhu3/consul/bootstrap.json 
-config-dir=/export/home/jiazhu3/consul/consul.d/      -bind=10.255.73.132
```

## config
```
{
    "bootstrap": true,
    "server": true,
    "datacenter": "pek",
    "data_dir": "/export/home/jiazhu3/consul/data",
    "encrypt": "xxxxxxxxxxxxxxxxxxxxxxx",
    "log_level": "INFO",
    "enable_syslog": true,
    "ui_dir": "/export/home/jiazhu3/consul/dist",
    "bind_addr": "10.255.73.132"
    
    
    #"client_addr":"0.0.0.0",
}
```




Ports Used

Consul requires up to 5 different ports to work properly, some on TCP, UDP, or both protocols. Below we document the requirements for each port.
```
Server RPC (Default 8300). This is used by servers to handle incoming requests from other agents. TCP only.
Serf LAN (Default 8301). This is used to handle gossip in the LAN. Required by all agents. TCP and UDP.
Serf WAN (Default 8302). This is used by servers to gossip over the WAN to other servers. TCP and UDP.
CLI RPC (Default 8400). This is used by all agents to handle RPC from the CLI. TCP only.
HTTP API (Default 8500). This is used by clients to talk to the HTTP API. TCP only.
DNS Interface (Default 8600). Used to resolve DNS queries. TCP and UDP.
```
