ARG ALPINE_VERSION=3.19

FROM alpine:${ALPINE_VERSION} AS builder

LABEL maintainer="Howey(Huo Yi) <huoyihy@hotmail.com>" \
        org.label-schema.name="docker-shadowsocks" \
        org.label-schema.vendor="Turing Compute" \
        org.label-schema.description="docker image that run shadowsocks toolset according to given configuration." \
        org.label-schema.vcs-url="https://github.com/TuringCompute/Docker-Shadowsocks" \
        org.label-schema.license="MIT"

# install shadowsocks toolset library: 
#  - shadowsocks-libev
RUN apk add --update --no-cache --update-cache --allow-untrusted libressl3.8-libcrypto libsodium
RUN apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted shadowsocks-libev

# install python and pip support
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN apk add --update --no-cache py3-pip
