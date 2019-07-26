docker stop teatalk-dubbo-admin-ui
docker rm teatalk-dubbo-admin-ui
docker run \
    -d --name teatalk-dubbo-admin-ui \
    --net=host \
    10.10.208.193:5000/teatalk-dubbo-admin-ui:0.1
docker logs -f teatalk-dubbo-admin-ui