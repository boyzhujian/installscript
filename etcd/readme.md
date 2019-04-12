## use etcd exec-watch to do a lot of script triger 
- etcdctl exec-watch --recursive /fakekey  -- sh -c 'echo $ETCD_WATCH_VALUE'
- etcdctl exec-watch --recursive /fakekey  -- sh -c '/home/jiazhu3/gopro/cronsun/damonnote/damonnote'
- etcdctl exec-watch --recursive /fakekey  -- sh -c '/usr/bin/python /home/jiazhu3/gopro/cronsun/damonnote/hello.py'


## use etcd gateway to load balance and forward 


## use etcd grpcproxy to  combine watch  and  reduce etcd load.



## Doc
https://segmentfault.com/a/1190000016010980(https://segmentfault.com/a/1190000016010980)
