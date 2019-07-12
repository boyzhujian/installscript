https://medium.com/@deeeet/building-private-docker-registry-with-basic-authentication-with-self-signed-certificate-using-it-e6329085e612


```
git clone https://github.com/docker/docker-registry 
cp docker-registry/contrib/nginx/nginx_1–3–9.conf /etc/nginx/conf.d/
cp docker-registry/contrib/nginx/docker-registry.conf /etc/nginx/
yum install httpd-tools
htpasswd -bc /etc/nginx/docker-registry.htpasswd USERNAME PASSWORD 

```
