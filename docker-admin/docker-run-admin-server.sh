docker stop teatalk-dubbo-admin-server
docker rm teatalk-dubbo-admin-server
docker run \
    -d --name teatalk-dubbo-admin-server \
    --net=host \
    10.10.208.193:5000/teatalk-dubbo-admin-server:0.1
docker logs -f teatalk-dubbo-admin-server