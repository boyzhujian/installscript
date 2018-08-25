https://github.com/gliderlabs/registrator
http://gliderlabs.github.io/registrator/latest/user/quickstart/
```

docker run -d --name=consul --net=host gliderlabs/consul-server -bootstrap

$ docker run -d \
    --name=registrator \
    --net=host \
    --volume=/var/run/docker.sock:/tmp/docker.sock \
    gliderlabs/registrator:latest \
      consul://localhost:8500



curl http://127.0.0.1:8500/v1/catalog/services

curl http://127.0.0.1:8500/v1/catalog/service/mongo


```
