FROM alpine:3.13

RUN apk update
RUN apk add eggdrop eggdrop-doc shadow
RUN /usr/sbin/useradd -m -s /bin/sh eggdrop
COPY eggdrop.conf /home/eggdrop/eggdrop.conf
COPY eggdrop.sh /home/eggdrop/eggdrop.sh
COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
