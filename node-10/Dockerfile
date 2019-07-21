FROM node:10-alpine

WORKDIR /data

COPY start.sh .

RUN set -ex  \
  && apk update \
  && apk add --no-cache ca-certificates wget unzip \
  && apk add --no-cache yarn python g++ make \
  && rm -rf /var/cache/apk/*

CMD ["/bin/sh","start.sh"]