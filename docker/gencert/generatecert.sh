HOST=hostname.webex.com


openssl genrsa -aes256 -out ca-key.pem 4096
openssl req -new -x509 -days 365 -key ca-key.pem -sha256 -out ca.pem

openssl genrsa -out server-key.pem 4096
openssl req -subj "/CN=$HOST" -sha256 -new -key server-key.pem -out server.csr
echo subjectAltName = DNS:$HOST,IP:10.10.10.20,IP:127.0.0.1 >> extfile.cnf
echo extendedKeyUsage = serverAuth >> extfile.cnf


openssl x509 -req -days 365 -sha256 -in server.csr -CA ca.pem -CAkey ca-key.pem \
  -CAcreateserial -out server-cert.pem -extfile extfile.cnf
  
  
  
  dockerd -H tcp://10.252.10.37:2376 -H unix:///var/run/docker.sock  --data-root  /w11logs/jiazhu3/docker/docker/ --tls=true --tlscacert=/export/home/jiazhu3/gendockercert/ca.pem --tlscert=/export/home/jiazhu3/gendockercert/server-cert.pem --tlskey=/export/home/jiazhu3/gendockercert/server-key.pem
