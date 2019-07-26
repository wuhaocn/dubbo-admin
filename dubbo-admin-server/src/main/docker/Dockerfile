#基础镜像
FROM 10.10.208.193:5000/urcs/java:8

VOLUME ["/tea-admin"]
ADD ./ /home/tea-admin/

#指定时区
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

ENTRYPOINT ["/home/tea-admin/run.sh"]

