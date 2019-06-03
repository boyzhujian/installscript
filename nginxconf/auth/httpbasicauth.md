[https://www.booleanworld.com/set-basic-http-authentication-nginx/](https://www.booleanworld.com/set-basic-http-authentication-nginx/)

```
location /files {
    satisfy any;

    allow 10.2.0.0/16;
    allow 10.3.155.26;
    deny all;

    auth_basic "Restricted";
    auth_basic_user_file /etc/nginx/htpasswd;
}
```

In the above example, any user with an IP of 10.2.0.0-10.2.255.255 and 10.3.155.26 are allowed without a password. For other users, we fall back to basic authentication.




