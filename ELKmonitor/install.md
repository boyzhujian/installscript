#quick simple 
#https://elk-docker.readthedocs.io/#prerequisites

#host tweak 
sysctl vm.max_map_count
```
sysctl -w vm.max_map_count=262144
sysctl -w fs.file-max=65536
```
** you should run docker in privilege mode **

#install dockernized elk
docker pull sebp/elk


```
 docker run -p 5601:5601 -p 9200:9200 -p 5044:5044   -v /opt/dockerdata/elkdata:/var/lib/elasticsearch  --privileged  --ulimit nofile=262144:262144  --name elk sebp/elk
 ```


#install filebeat on client
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.5.2-x86_64.rpm
rpm -ivh filebeat-5.5.2-x86_64.rpm
```
systemctl status -l filebeat

sudo systemctl enable filebeat

sudo systemctl start filebeat
```
