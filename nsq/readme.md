https://nsq.io/components/nsqd.html#post-topiccreate

nsqlookupd


nsqd --lookupd-tcp-address=127.0.0.1:4160 --broadcast-address=127.0.0.1


nsqadmin --lookupd-http-address=127.0.0.1:4161


curl -X POST http://127.0.0.1:4151/topic/create\?topic\=test
curl -d "<message>" http://127.0.0.1:4151/pub\?topic\=test

nsq_to_file  -output-dir=/tmp --lookupd-http-address=127.0.0.1:4161  -topic=test
