# registrator register all docker to consul automatic 

 docker run -d     --name=registrator     --net=host     --volume=/var/run/docker.sock:/tmp/docker.sock     gliderlabs/registrator:latest       consul://localhost:8500
 
 
 docker logs registrator
 
 dig @127.0.0.1 -p 8600 mongo.service.dc1.consul
