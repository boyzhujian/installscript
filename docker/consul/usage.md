# run test
docker run -p  8500:8500   --name=dev-consul   consul
curl http://127.0.0.1:8500
