FROM alpine:3.13

RUN apk update
RUN apk add eggdrop eggdrop-doc
RUN useradd -m -s /bin/sh eggdrop
COPY eggdrop.conf /home/eggdrop/eggdrop.conf
