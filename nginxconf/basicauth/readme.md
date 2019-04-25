yum provides \*bin/htpasswd
yum install  httpd-tools

htpasswd filename  useranme 

> nginx  not support bcript  httpbasic auth


server  location  section

```
  auth_basic "mso daemon service  auth";
  auth_basic_user_file /opt/nginxauth/newmsoauth.passwd;
```
