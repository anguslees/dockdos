FROM debian:buster@sha256:8fc5c3f7828792d01a02f490202c4b1aaa33f00a3beed5bc12814e3ed55fa0e2
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
