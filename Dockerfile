FROM alpine:edge

MAINTAINER "andrico21"

RUN apk update && apk upgrade && apk add --no-cache bash rsyslog && apk cache clean && rm -rf /var/cache/apk

EXPOSE 514

COPY rsyslog.conf /etc/rsyslog.conf
COPY docker-entrypoint.sh /usr/local/bin/

USER nobody

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["docker-entrypoint.sh","rsyslogd", "-n"]
