FROM lsiobase/alpine
MAINTAINER onigoetz <onigoetz@onigoetz.ch>

RUN apk add --no-cache bash unrar

COPY crontab /var/spool/cron/crontabs/abc

COPY ./unrar.sh /bin/unrar.sh
RUN chmod +x /bin/unrar.sh

VOLUME /data

CMD ["crond", "-l", "2", "-f"]
