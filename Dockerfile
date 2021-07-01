FROM alpine

MAINTAINER Christian Zufferey <christian@zufferey.com>
# zf210701.2332

# FROM alpine

# COPY ubuntu_config.sh /root
# RUN chmod 755 /root/ubuntu_config.sh
# RUN /root//ubuntu_config.sh

RUN apk update \
	&& apk add openssh openssh-server curl nano terminator xfce4 xauth \
  && ssh-keygen -A \
  && passwd -d root \
	&& touch /root/.Xauthority
  

COPY service_start.sh /root
RUN chmod 755 /root/service_start.sh

ENTRYPOINT /root/service_start.sh
WORKDIR /root
