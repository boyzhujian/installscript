
https://prometheus.io/download/

http://www.linuxe.cn/sort/Prometheus

小团队从0搭建devOPS平台-Alertmanager报警平台

[https://www.jianshu.com/p/0dbece52b488](https://www.jianshu.com/p/0dbece52b488)



<metric name>{<label name>=<label value>, ...}

api_http_requests_total{method="POST", handler="/messages"}


//通过rate()函数获取HTTP请求量的增长率
rate(http_requests_total[5m])
//查询当前系统中，访问量前10的HTTP地址
topk(10, http_requests_total)

[https://ryanyang.gitbook.io/prometheus/di-er-zhang-gai-nian/metric_types](https://ryanyang.gitbook.io/prometheus/di-er-zhang-gai-nian/metric_types)
counter
guage
Histogram
Summary


Opening storage failed lock DB directory: resource temporarily unavailable
 -   Prometheus doesn't permissions to write this directory.
 -   Or another process is running in parallel and already acquired the lock.
 -   Or you're using a file system (such as NFS) which isn't fully supported by Prometheus.

