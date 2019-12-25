wget http://www.haproxy.org/download/1.7/src/haproxy-1.7.2.tar.gz
tar xvf haproxy-1.7.2.tar.gz
cd haproxy-1.7.2
make PREFIX=/home/ha/haproxy TARGET=linux2628
make install PREFIX=/home/ha/haproxy
mkdir -p  /home/ha/haproxy/conf
