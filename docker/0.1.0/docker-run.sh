#!/usr/bin/env bash
docker stop dubbo-admin
docker rm `docker ps -a -q`
docker run -d  --privileged=true -p 8091:8080 --name dubbo-admin 10.10.208.193:5000/dubbo-admin:20191204113501

docker logs -f dubbo-admin