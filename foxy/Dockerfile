FROM osrf/ros:foxy-desktop 
LABEL Description="A Dockerfile to ros foxy $RES_NAME:$TAG"

COPY ros2-latest.list /etc/apt/sources.list.d 

RUN set -x \
    && apt install ca-certificates \
    && apt install apt-transport-https \
    && apt update \
    && apt install -y vim tree net-tools iputils-ping python3-pip

RUN set -x \
    && useradd -m xxx && echo "xxx:xxx" | chpasswd && adduser xxx sudo 

USER xxx 

ENTRYPOINT [ "/ros_entrypoint.sh" ]
CMD ["bash"]
