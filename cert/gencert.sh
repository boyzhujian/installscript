openssl genrsa -out privkey.pem 1024
openssl req -new -key privkey.pem -out certreq.csr
openssl x509 -req -days  3650 -in certreq.csr -signkey privkey.pem -out newcert.pem

#even add in trust ,firefox still not work
#proxy -har -cert newcert.pem  -key privkey.pem -v 2 -addr :7090
#http.ListenAndServeTLS(":8443", "./config/newcert.pem", "./config/privkey.pem", router)
