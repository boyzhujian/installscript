https://www.opposhore.com/blog/subdomain_coredns/

[https://www.cnblogs.com/leffss/p/10148507.html](https://www.cnblogs.com/leffss/p/10148507.html)



etcdctl put  /cisco/com/2500shouhui/cisco/etcd/  '{"host":"10.252.52.191","ttl":60}'

dig etcd.cisco.2500shouhui.com


```
 etcd cisco.2500shouhui.com {
   path /cisco    # the pathprefix used in etcd  store
   endpoint http://10.252.52.191:2379
   debug
   #upstream /etc/resolv.conf
}


etcd [ZONES...] {
    fallthrough [ZONES...]
    path PATH
    endpoint ENDPOINT...
    credentials USERNAME PASSWORD
    tls CERT KEY CACERT
}


etcdctl role add coredns
etcdctl role grant-permission coredns readwrite /cisco
etcdctl user add coredns
etcd user grant-role coredns coredns
etcdctl  user grant-role coredns coredns
```

