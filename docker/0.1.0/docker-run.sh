#!/usr/bin/env bash
docker stop dubbo-admin
docker rm `docker ps -a -q`
docker run -d  --privileged=true -p 8091:8080  --env ZK_URL='10.10.220.120:7998' --name dubbo-admin 10.10.208.193:5000/dubbo-admin:20200408151549

docker logs -f dubbo-admin