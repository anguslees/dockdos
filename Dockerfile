FROM debian:bookworm@sha256:1dc55ed6871771d4df68d393ed08d1ed9361c577cfeb903cd684a182e8a3e3ae
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
