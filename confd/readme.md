etcdctl --user=root:pass --endpoints=10.252.52.191:2379 get /cisco/

etcdctl --user=root:pass --endpoints=10.252.52.191:2379  put /myapp/database/url   10.252.52.191:3306

etcdctl --user=root:pass --endpoints=10.252.52.191:2379  put /myapp/database/user   root


#v2 etcd
confd -onetime   -confdir ./confdir  -backend    etcd -node http://10.252.52.191:2379


confd -onetime  -backend    etcdv3 -node http://10.252.52.191:2379


confd -onetime  -backend    etcdv3 -node http://10.252.52.191:2379   -username root -password pass -basic-auth
