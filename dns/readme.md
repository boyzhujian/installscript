#  what is SOA

[https://www.zytrax.com/books/dns/ch8/soa.html](https://www.zytrax.com/books/dns/ch8/soa.html)

name-server MNAME field
email-addr  RNAME field

```
owner-name  ttl class rr    name-server email-addr  (sn ref ret ex min)
example.com.    IN    SOA   ns.example.com. hostmaster.example.com. (
                              2003080800 ; sn = serial number
                              172800     ; ref = refresh = 2d
                              900        ; ret = update retry = 15m
                              1209600    ; ex = expiry = 2w
                              3600       ; nx = nxdomain ttl = 1h
                              )
; the following are also valid using @ and blank 
@               IN    SOA   ns.example.com. hostmaster.example.com. (
                IN    SOA   ns.example.com. hostmaster.example.com. (
```
