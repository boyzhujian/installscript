https://github.com/etcd-io/etcd/blob/master/Documentation/op-guide/security.md

etcd 

/root/go/bin/etcd -listen-client-urls http://10.8.0.1:2379 --advertise-client-urls http://10.8.0.1:2379

## with cliet  cert auth https 
/root/go/bin/etcd -listen-client-urls https://10.8.0.1:2379 --advertise-client-urls https://10.8.0.1:2379   --cert-file=/opt/dockerpro/etcd/ca/etcd1.pem  --key-file=/opt/dockerpro/etcd/ca/etcd1-key.pem

etcdctl  --cacert  /opt/dockerpro/etcd/ca/ca.pem  --endpoints https://10.8.0.1:2379 put /test/tmp 1

## with client cert auth https
/root/go/bin/etcd -listen-client-urls https://10.8.0.1:2379 --advertise-client-urls https://10.8.0.1:2379   --cert-file=/opt/ca/etcd1.pem  --key-file=/opt/ca/etcd1-key.pem --client-cert-auth --trusted-ca-file=/opt/ca/ca.pem

etcdctl  --cacert  /opt/ca/ca.pem --cert /opt/ca/proxy1.pem --key /opt/ca/proxy1-key.pem  --endpoints https://10.8.0.1:2379 put /test/tmp 1








