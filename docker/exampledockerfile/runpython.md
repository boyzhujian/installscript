```
FROM python:2
MAINTAINER jiazhu3
ADD getwcr_mysql.py /
RUN pip install requests &&pip install pymysql
CMD ["python","./getwcr_mysql.py"]
```
