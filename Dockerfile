FROM debian:buster@sha256:58ce6f1271ae1c8a2006ff7d3e54e9874d839f573d8009c20154ad0f2fb0a225
MAINTAINER Angus Lees <gus@inodes.org>

ADD https://github.com/stsp/dosemu2/releases/download/dosemu2-2.0pre6/dosemu2_2.0.pre6-1_amd64.deb /tmp/dosemu2.deb

RUN \
    set -e -x; \
    apt-get update -qy; \
    apt-get upgrade -qy; \
    apt-get install -qy --no-install-recommends /tmp/dosemu2.deb

ENV AUDIODEV=null

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
