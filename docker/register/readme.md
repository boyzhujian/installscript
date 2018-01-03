
## my.registry.address:port/repositoryname


docker search   imagename
docker pull 
docker push



docker pull   image                            #from   docker hub or other images warehouse 

docker tag 8dbd9e392a96 localhost.localdomain:5000/ubuntu

docker push imagesid  my.registry.address:port/repositoryname


### example
https://github.com/mkuchin/docker-registry-web/tree/master/examples/auth-enabled


## register api
get token
 curl -iL -u username:pass   http://localhost:8080/api/auth
