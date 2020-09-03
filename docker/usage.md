# how to build image
docker build -t image_name .


# How to run a container with custom name:
docker run -d --name container_name image_name


## run phpmyadmin with external server ip 
docker run --name myadmin -d -e PMA_HOST=10.255.73.132 -p 8090:80    phpmyadmin/phpmyadmin



##  manange docker on one server  with  portainer https://github.com/portainer/portainer
docker run -d -p 19000:9000 -v /root/jiazhu3/dockervolume/portainerdata/:/data portainer/portainer


##  manage  cluster supervisord with cesi
docker run -d -p 5000:5000 -v /root/jiazhu3/etc/cesiconf/:/etc/ burcina/docker-cesi

## install powserdns web ui
https://github.com/interlegis/docker-pdnsadmin/blob/master/docker-compose.yml

## run docker not as root
sudo usermod -a -G docker $USER


## show var usage https://serverfault.com/questions/994409/find-the-used-hard-disk-data-and-solve-disk-pressure/994413#994413
```
lsof \
| grep REG \
| grep -v "stat: No such file or directory" \
| grep -v DEL \
| awk '{if ($NF=="(deleted)") {x=3;y=1} else {x=2;y=0}; {print $(NF-x) "  " $(NF-y) } }'  \
| sort -n -u  \
| numfmt  --field=1 --to=iec
```
