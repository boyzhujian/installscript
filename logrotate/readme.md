sample


### common command list
-  logrotate --verbose  /etc/logrotate.d/cyberbot         //for test
-  logrotate -f   /etc/logrotate.d/cyberbot        //force run once to see results


 ```
/var/log/boot.log
{
    missingok
    daily
    copytruncate
    rotate 7
}
```

