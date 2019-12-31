### Install 

wget https://dl.grafana.com/oss/release/grafana-6.5.2-1.x86_64.rpm

[https://portal.influxdata.com/downloads/](https://portal.influxdata.com/downloads/)


/etc/influxdb/influxdb.conf


```
influx
create database telegraf;
use telegraf;
create user "telegraf" with password 'telegraf';
 GRANT ALL PRIVILEGES TO "telegraf"


```


/etc/telegraf/telegraf.conf

- urls：表示influxdb的地址及端口号
- database：influxdb数据库名
- username：数据库用户名
- password：数据库密码




SELECT mean("usage_idle")  *-1+100 FROM "autogen"."cpu" WHERE $timeFilter GROUP BY time($__interval), "host" fill(null)
