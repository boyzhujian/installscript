https://github.com/networkboot/docker-dhcpd

docker run -it --rm --net=host -v "$(pwd)/data":/data networkboot/dhcpd eth0

/data/dhcpd.conf
