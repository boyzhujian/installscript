
gitsync:
	$(shell ./gitsync.sh)

todate:
	echo "$$(date +%Y%m%d)" > version
	echo "$$(git rev-parse HEAD)">>version


build: todate
	docker build -t msologic .
	docker tag  msologic  10.252.52.191:5000/msologic
	

.PHONY:deploy
deploy: build 
	docker push  10.252.52.191:5000/msologic  



remotebuild:
	#rsync -C -r * ocpcyber2:~/msologic/
	ssh -t ocpcyber2 "cd /home/jiazhu3/msologic/ &&  /usr/bin/make  -f /home/jiazhu3/msologic/makefile build"
