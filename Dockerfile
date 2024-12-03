FROM debian:bookworm@sha256:17122fe3d66916e55c0cbd5bbf54bb3f87b3582f4d86a755a0fd3498d360f91b
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
