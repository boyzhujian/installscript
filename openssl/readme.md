get site crt 

openssl s_client -connect esbt1esc002.webex.com:9200 -showcerts


location / {
proxy_pass    https://esbt1esc002.webex.com:9200/;
proxy_ssl_trusted_certificate /etc/nginx/cert.crt;
proxy_set_header Authorization "Basic basicauth";
}


check cert date
openssl x509 -in cert.pem -noout -text
