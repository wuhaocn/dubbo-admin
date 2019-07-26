#!/usr/bin/env bash
docker stop dubbo-admin
docker rm `docker ps -a -q`
docker run -d  --privileged=true -p 8080:8080 --name dubbo-admin 10.10.208.193:5000/dubbo-admin:20190725210551

docker logs -f dubbo-admin