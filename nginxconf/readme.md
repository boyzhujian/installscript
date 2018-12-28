[ online editor ](https://nginxconfig.io/)

#under stand proxy_pass 
https://www.digitalocean.com/community/tutorials/understanding-nginx-http-proxying-load-balancing-buffering-and-caching



location optional_modifier location_match {

    . . .

}

optional modifier

https://www.digitalocean.com/community/tutorials/understanding-nginx-server-and-location-block-selection-algorithms

 5   (none): If no modifiers are present, the location is interpreted as a prefix match. This means that the location given will be matched against the beginning of the request URI to determine a match.
 1   =: If an equal sign is used, this block will be considered a match if the request URI exactly matches the location given.
 3   ~: If a tilde modifier is present, this location will be interpreted as a case-sensitive regular expression match.
  4  ~*: If a tilde and asterisk modifier is used, the location block will be interpreted as a case-insensitive regular expression match.
2    ^~: If a carat and tilde modifier is present, and if this block is selected as the best non-regular expression match, regular expression matching will not take place.
    
    
    
It is important to understand that, by default, Nginx will serve regular expression matches in preference to prefix matches. However, it evaluates prefix locations first, allowing for the administer to override this tendency by specifying locations using the = and ^~ modifiers.

It is also important to note that, while prefix locations generally select based on the longest, most specific match, regular expression evaluation is stopped when the first matching location is found. This means that positioning within the configuration has vast implications for regular expression locations.

Finally, it it is important to understand that regular expression matches within the longest prefix match will "jump the line" when Nginx evaluates regex locations. These will be evaluated, in order, before any of the other regular expression matches are considered. Maxim Dounin, an incredibly helpful Nginx developer, explains in this post this portion of the selection algorithm.



http://nginx.org/en/docs/http/ngx_http_core_module.html#var_request_uri
