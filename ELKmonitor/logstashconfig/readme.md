#https://doc.yonyoucloud.com/doc/logstash-best-practice-cn/get_start/index.html

mac  
brew install logstash

for debug ,


logstash -f simple.conf

simple.conf

input { stdin { } }
output {
  elasticsearch { hosts => ["127.0.0.1:9200"] }
    stdout { codec => rubydebug }
    }
