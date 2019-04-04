### set  ETCDCTL_API=3 in env



- add role:  etcdctl role add root
- add user:  etcdctl user add root 
- enable auth : etcdctl auth enable
- command with auth: etcdctl  --user root:pass member list


