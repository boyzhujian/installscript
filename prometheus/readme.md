
https://prometheus.io/download/


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
