## use etcd exec-watch to do a lot of script triger 
- etcdctl exec-watch --recursive /fakekey  -- sh -c 'echo $ETCD_WATCH_VALUE'
- etcdctl exec-watch --recursive /fakekey  -- sh -c '/home/jiazhu3/gopro/cronsun/damonnote/damonnote'
- etcdctl exec-watch --recursive /fakekey  -- sh -c '/usr/bin/python /home/jiazhu3/gopro/cronsun/damonnote/hello.py'


## use etcd gateway to load balance and forward 


## use etcd grpcproxy to  combine watch  and  reduce etcd load.



## Doc
https://segmentfault.com/a/1190000016010980(https://segmentfault.com/a/1190000016010980)

## Env
- ETCDCTL_API=3
- ETCDCTL_USER=root:pass     why ETCDCTL_USERNAME not working 
- ETCDCTL_ENDPOINTS='https://127.0.0.1:2379'
- ETCDCTL_CA_FILE='/srv/etcd/etcd-ca.crt'
- ETCDCTL_CERT_FILE='/srv/etcd/etcd-client.crt'
- ETCDCTL_KEY_FILE='/srv/etcd/etcd-client.key'


##   Integration tools
https://github.com/etcd-io/etcd/blob/master/Documentation/integrations.md
