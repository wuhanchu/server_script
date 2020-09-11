1. 下载镜像

```shell
docker pull wurstmeister/zookeeper
docker pull wurstmeister/kafka
```

2. 启动 zookper

`docker run -d --name zookeeper -p 32050:2181 -t wurstmeister/zookeeper`

1. 启动 kafka

```shell
docker run  -d --name kafka -p 32051:9092  -e KAFKA_ZOOKEEPER_CONNECT=172.17.0.1:32050 -e KAFKA_ADVERTISED_HOST_NAME=192.168.1.150 -v /var/run/docker.sock=/var/run/docker.sock wurstmeister/kafka
```

