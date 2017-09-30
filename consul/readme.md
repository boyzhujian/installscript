
#command
```
consul agent 
-config-file=/export/home/jiazhu3/consul/bootstrap.json 
-config-dir=/export/home/jiazhu3/consul/consul.d/      -bind=10.255.73.132
```

#config
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
