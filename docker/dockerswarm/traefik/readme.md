
### use cli to create 
```
docker network create --driver=overlay traefik-net
docke  service create \
    --name traefik \
    --constraint=node.role==manager \
    --publish 80:80 --publish 8080:8080 \
    --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock \
    --network traefik-net \
    traefik \
    --docker \
    --docker.swarmMode \
    --docker.domain=traefik \
    --docker.watch \
    --api


docker service create  --name whoami0  --label traefik.port=80   --network traefik-net  emilevauge/whoami
docker service create --name gohttp --label traefik.port=8000 --network traefik-net  codeskyblue/gohttpserver
```
