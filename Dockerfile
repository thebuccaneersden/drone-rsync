FROM armhf/alpine:3.4
MAINTAINER Hans-Christian Andersen <ha@phulse.com>
# Forked from Michael de Wit <michael@drillster.com>

RUN apk add --no-cache ca-certificates bash openssh-client rsync
COPY upload.sh /usr/local/

ENTRYPOINT ["/usr/local/upload.sh"]
