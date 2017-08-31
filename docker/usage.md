## run phpmyadmin with external server ip 
docker run --name myadmin -d -e PMA_HOST=10.255.73.132 -p 8090:80    phpmyadmin/phpmyadmin



##  manange docker on one server  with  portainer https://github.com/portainer/portainer
docker run -d -p 19000:9000 -v /root/jiazhu3/dockervolume/portainerdata/:/data portainer/portainer


##  manage  cluster supervisord with cesi
docker run -d -p 5000:5000 -v /root/jiazhu3/etc/cesiconf/:/etc/ burcina/docker-cesi
