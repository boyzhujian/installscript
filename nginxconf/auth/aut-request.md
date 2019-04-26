
auth_request对应的路由返回401 or 403时，会拦截请求直接nginx返回前台401 or 403信息；

auth_request对应的路由返回2xx状态码时，不会拦截请求，而是构建一个subrequest请求再去请求真实受保护资源的接口；



```
upstream web1 {
    server 192.168.20.131:3000;
}

upstream web2 {
    server 192.168.20.131:3001;
}
server {
    listen       80;
    server_name  localhost;

    #charset koi8-r;
    #access_log  /var/log/nginx/host.access.log  main;

    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }

    location /api/web1 {

        auth_request /auth;
        error_page 401 = @error401;

        auth_request_set $user $upstream_http_x_forwarded_user;
        proxy_set_header X-Forwarded-User $user;
        proxy_pass http://web1;
    }

    location /api/web2 {
        auth_request /auth;
        error_page 401 = @error401;

        auth_request_set $user $upstream_http_x_forwarded_user;
        proxy_set_header X-Forwarded-User $user;
        proxy_pass http://web2;
    }

    location /auth {
        internal;
        proxy_set_header Host $host;
        proxy_pass_request_body off;
        proxy_set_header Content-Length "";
        proxy_pass http://192.168.20.131:7001/auth;
    }

    
    location @error401 {
        add_header Set-Cookie "NSREDIRECT=$scheme://$http_host$request_uri;Path=/";
        return 302 http://192.168.20.131:7001/login;
    }

    #error_page  404              /404.html;

    # redirect server error pages to the static page /50x.html
    #
    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}

111
