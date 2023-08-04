FROM einsn/ros_foxy:20230413
LABEL Description="A Dockerfile for cross building ros-foxy of nano boards: $RES_NAME:$TAG"

USER root

ADD ["nano_ros_rootfs_v01.tgz","/opt/nano/"]
ADD ["gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu.tar.xz","/opt/toolchains/"]

COPY cross.cmake /opt/nano/

RUN set -x \
    && apt update \
    && apt install -y file openssl libssl-dev rsync

USER xxx 

ENTRYPOINT [ "/ros_entrypoint.sh" ]
CMD ["bash"]
