

#  https://github.com/mkuchin/docker-registry-web


With authentication enabled
Token authentication requires RSA private key in PEM format and certificate matched with this key

Generate private key and certificate

mkdir conf
openssl req -new -newkey rsa:4096 -days 365 -subj "/CN=localhost" \
        -nodes -x509 -keyout conf/auth.key -out conf/auth.cert
Create registry config conf/registry-srv.yml

version: 0.1    

storage:
  filesystem:
    rootdirectory: /var/lib/registry
    
http:
  addr: 0.0.0.0:5000   
    
auth:
  token:
    # external url to docker-web authentication endpoint
    realm: http://localhost:8080/api/auth
    # should be same as registry.name of registry-web
    service: localhost:5000
    # should be same as registry.auth.issuer of registry-web
    issuer: 'my issuer'
    # path to auth certificate
    rootcertbundle: /etc/docker/registry/auth.cert
Start docker registry

docker run -v $(pwd)/conf/registry-srv.yml:/etc/docker/registry/config.yml:ro \
            -v $(pwd)/conf/auth.cert:/etc/docker/registry/auth.cert:ro -p 5000:5000  --name registry-srv -d registry:2    
Create configuration file conf/registry-web.yml

registry:
  # Docker registry url
  url: http://registry-srv:5000/v2
  # Docker registry fqdn
  name: localhost:5000
  # To allow image delete, should be false
  readonly: false
  auth:
    # Enable authentication
    enabled: true
    # Token issuer
    # should equals to auth.token.issuer of docker registry
    issuer: 'my issuer'
    # Private key for token signing
    # certificate used on auth.token.rootcertbundle should signed by this key
    key: /conf/auth.key
Start registry-web

docker run -v $(pwd)/conf/registry-web.yml:/conf/config.yml:ro \
           -v $(pwd)/conf/auth.key:/conf/auth.key -v $(pwd)/db:/data \
           -it -p 8080:8080 --link registry-srv --name registry-web hyper/docker-registry-web
Web UI will be available on http://localhost:8080 with default admin user/password admin/admin.
