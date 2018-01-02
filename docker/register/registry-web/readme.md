

#  https://github.com/mkuchin/docker-registry-web
See With authentication enabled

note:   

admin have not write all privilege ,need manually add user ,give write privilege to push

if use docker push http ,need add below config
/etc/docker/daemon.json { "insecure-registries":["10.252.10.38:5000"] }

can not find delete button
