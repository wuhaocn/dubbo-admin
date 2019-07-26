#!/usr/bin/env bash
version=`date +%Y%m%d%H%M%S`;
echo "build dubbo-admin version $version"


docker rm `docker ps -a -q`

docker rmi --force `docker images | grep dubbo-admin | awk '{print $3}'`
docker rmi --force `docker images | grep none | awk '{print $3}'`

docker build -t dubbo-admin:$version .



docker tag dubbo-admin:$version 10.10.208.193:5000/dubbo-admin:$version

docker push 10.10.208.193:5000/dubbo-admin:$version

echo "build admin sucess 10.10.208.193:5000/dubbo-admin:$version"

