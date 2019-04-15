location = /en {
    return 302 /en/;
}
location /en/ {
    proxy_pass http://luscious/;  # note the trailing slash here, it matters!
}
