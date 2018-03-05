# [https://www.devdungeon.com/content/creating-systemd-service-files](https://www.devdungeon.com/content/creating-systemd-service-files)
# The service file
```
[Unit]
Description=My Miscellaneous Service
After=network.target

[Service]
Type=simple
User=nanodano
WorkingDirectory=/home/nanodano
ExecStart=/home/nanodano/my_daemon --option=123
Restart=on-abort

[Install]
WantedBy=multi-user.target

```

There are more options you can specify. For example, in addition to ExecStart you can specify ExecStop and ExecReload to control what happens when stopping and restarting. Those are not required though. If you omit the ExecStop option, it is smart enough to know it should kill the process. If you need a more graceful shutdown though, specify that with ExecStop. To see some more options, look at man systemd.service in your distribution. Freedesktop.org's man systemd.service .

# Read all the service options
man systemd.service
Controlling the Service
# Control whether service loads on boot
systemctl enable
systemctl disable

# Manual start and stop
systemctl start
systemctl stop

# Restarting/reloading
systemctl daemon-reload # Run if .service file has changed
systemctl restart
View Status/Logs
# See if running, uptime, view latest logs
systemctl status

# See all systemd logs
journalctl

# Tail logs
journalctl -f

# Show logs for specific service
journalctl -u my_daemon.service
