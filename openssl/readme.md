get site crt 

openssl s_client -connect esbt1esc002.webex.com:9200 -showcerts


location / {
proxy_pass    https://esbt1esc002.webex.com:9200/;
proxy_ssl_trusted_certificate /etc/nginx/cert.crt;
proxy_set_header Authorization "Basic basicauth";
}


check cert date

openssl x509 -in cert.pem -noout -text


https://blog.csdn.net/liuxiaoxiaocsdn/article/details/78982976?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase
