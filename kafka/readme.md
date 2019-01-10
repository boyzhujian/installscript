
https://hub.docker.com/r/wurstmeister/kafka

https://github.com/wurstmeister/kafka-docker

modify the KAFKA_ADVERTISED_HOST_NAME in docker-compose.yml to match your docker host IP (Note: Do not use localhost or 127.0.0.1 as the host ip if you want to run multiple brokers.)

docker-compose up


brew install kafkacat


kafkacat -b 173.39.230.181:9092 -L
