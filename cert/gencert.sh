openssl genrsa -out privkey.pem 1024
openssl req -new -key privkey.pem -out certreq.csr
openssl x509 -req -days  3650 -in certreq.csr -signkey privkey.pem -out newcert.pem

#proxy -har -cert newcert.pem  -key privkey.pem -v 2 -addr :7090
