FROM alpine:3.10

WORKDIR /data

COPY start.sh .

RUN set -ex  \
  && apk add --no-cache ca-certificates wget unzip

CMD ["/bin/sh","start.sh"]