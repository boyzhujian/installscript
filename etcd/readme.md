## use etcd exec-watch to do a lot of script triger 
etcdctl exec-watch --recursive /fakekey  -- sh -c 'echo $ETCD_WATCH_VALUE'
etcdctl exec-watch --recursive /fakekey  -- sh -c '/home/jiazhu3/gopro/cronsun/damonnote/damonnote'
etcdctl exec-watch --recursive /fakekey  -- sh -c '/usr/bin/python /home/jiazhu3/gopro/cronsun/damonnote/hello.py'
