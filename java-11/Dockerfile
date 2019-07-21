FROM openjdk:11-jre-slim

WORKDIR /data

COPY start.sh .

RUN set -ex  \
  && apk add --no-cache ca-certificates wget unzip

CMD ["/bin/sh","start.sh"]