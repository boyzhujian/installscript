//迅雷的远程下载，似乎废弃了
cd  yourdir
docker run -d         --name=xware         --net=host         -v $(pwd)/thunder:/app/TDDOWNLOAD         yinheli/docker-thunder-xware
docker logs xware

login http://yuancheng.xunlei.com   to activie 
