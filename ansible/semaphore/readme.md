use semaphore as ansible ui 


run mysql docker
edit scirpt/docker-startup.sh
docker build -t semaphore 
docker run -d  -it --rm   -p 8005:3000 semaphore
