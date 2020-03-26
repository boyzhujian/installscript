esxcli

## Manual mount vmfs disk
esxcfg-volume -l
esxcfg-volume -M 5e48527f-69419182-0a22-38eaa78db520     


## set log location
esxcli system syslog config get
esxcli system syslog config set --logdir /vmfs/volumes/datastore1


