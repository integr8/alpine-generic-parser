FROM alpine:latest

RUN apk add --no-cache py2-pip jq python2-dev musl-dev py2-lxml \
    && apk add --no-cache --virtual .buildtmp gcc make automake autoconf libtool \
    && pip install xq yq \
    && apk del -r --no-cache .buildtmp

WORKDIR /code
VOLUME /code
