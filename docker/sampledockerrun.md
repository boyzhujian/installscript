## portainer ##
docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v /opt/dockerdata/portainer:/data portainer/portainer

## ELK  ##
docker run -p 5601:5601 -p 9200:9200 -p 5044:5044   -v /opt/dockerdata/elkdata:/var/lib/elasticsearch  --privileged  --ulimit nofile=262144:262144  --name elk sebp/elk`

 ## mongo ##
 docker run -d -p 8008:80 --link mymongo:db --name rockmongo webts/rockmongo
 docker run --name=mymongo --hostname=mymongo --env="PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" --env="GOSU_VERSION=1.10" --env="JSYAML_VERSION=3.10.0" --env="GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5" --env="MONGO_PACKAGE=mongodb-org" --env="MONGO_REPO=repo.mongodb.org" --env="MONGO_MAJOR=3.6" --env="MONGO_VERSION=3.6.3" --volume="/opt/dockerdata/mongo:/data/db" --volume="/data/configdb" --volume="/data/db" --network=bridge -p 27017:27017 --restart=always --detach=true mongo:latest mongod

## try to guess docker run ## 
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock    assaflavie/runlike   1869cc7eb424

## dnsmasq ##
dockerrun --name dnsmasq --cap-add=NET_ADMIN --net=host -v /opt/dockerdata/dnsmasqdata:/etc/dnsmasq storytel/dnsmasq

