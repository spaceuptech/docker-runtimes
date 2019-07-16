FROM node:10-alpine

WORKDIR /data

COPY start.sh .

RUN set -ex  \
  && apk add --no-cache ca-certificates wget unzip \
  && npm install -g serve

CMD ["/bin/sh","start.sh"]