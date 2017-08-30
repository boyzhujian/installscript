## run phpmyadmin with external server ip 
docker run --name myadmin -d -e PMA_HOST=10.255.73.132 -p 8090:80    phpmyadmin/phpmyadmin
