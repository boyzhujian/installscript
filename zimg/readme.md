save all pictures in one location

```
version: '3'
services:
  zimg:
    image: iknow0612/zimg
    container_name: zimg
    restart: always
    ports:
      -  4869:4869
    volumes:
      - ./zimg/image:/zimg/bin/img
```



curl -H "Content-Type:png" --data-binary @2.png "http://218.244.149.165:4869/upload"

{"ret":true,"info":{"md5":"3d4ad10af1c7cb8264cb7888a0d1af5f","size":144896}}%


visit  by

http://218.244.149.165:4869/3d4ad10af1c7cb8264cb7888a0d1af5f
