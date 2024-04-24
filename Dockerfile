FROM debian:buster@sha256:bce46a1c39574f98c845df4a5acc6c70c211df5a6182e428c1155c33317d4920
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
