# install docker compose https://docs.docker.com/compose/install/#install-compose
```
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose


sudo chmod +x /usr/local/bin/docker-compose
```

docker-compose: error while loading shared libraries: libz.so.1: failed to map segment from shared object: Operation not permitted

fix 
sudo mount /tmp -o remount,exec
