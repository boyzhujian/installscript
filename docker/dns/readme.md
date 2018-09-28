https://github.com/poweradmin/poweradmin


docker run --name dnsmasq --cap-add=NET_ADMIN --net=host -v /opt/dockerdata/dnsmata:/etc/dnsmasq  -itd --rm storytel/dnsmasq
