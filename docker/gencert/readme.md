use tls to protect docker 


need 

ca.pem 
server-cert.pem 
server-key.pem


use docker 
```
docker run -v /yourhostpathtosave:/certs -e SSL_SUBJECT=test.example.com   paulczar/omgwtfssl

```


registry with tls
```
docker run -d \
    --name registry \
    --volumes-from certs \
    -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/cert.pem \
    -e REGISTRY_HTTP_TLS_KEY=/certs/key.pem \
    -p 5000:5000 \
    registry:2
    ```
