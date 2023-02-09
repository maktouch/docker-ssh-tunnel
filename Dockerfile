FROM alpine:3.17.1

LABEL maintainer="Mak <me@maktouch.com>"

ARG USER=autossh
ARG GROUP=autossh
ARG UID=1024
ARG GID=1024

RUN addgroup -S -g ${GID} ${GROUP} \
  && adduser -S -D -H -s /bin/false -g "${USER} service" \
  -u ${UID} -G ${GROUP} ${USER} \
  && set -x \
  && apk add --no-cache autossh libressl

ADD entrypoint.sh /entrypoint.sh

USER ${USER}

ENTRYPOINT ["/entrypoint.sh"]