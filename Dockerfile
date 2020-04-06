FROM alpine:edge

RUN apk add -U --no-cache --virtual .build-deps python3-dev krb5-dev gcc build-base libxml2-dev libxslt-dev libffi-dev openssl-dev

RUN apk -U --no-cache add aws-cli py3-pip libxslt

RUN pip3 install aws-adfs

RUN mkdir -p ~/.aws \
    && apk del .build-deps \
    && rm -rf /tmp/* /var/cache/apk/* \
    && rm -rf ~/.cache/pip \
    && echo "" > /root/.ash_history

VOLUME ~/.aws
