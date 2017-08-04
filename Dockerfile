FROM multiarch/alpine:x86_64-latest-stable

MAINTAINER Mickaël Cornière <mickael.corniere@gmail.com>

ENV UID=5000
ENV GID=5000

ENV \
    BUILD_DEPS="gettext"  \
    RUNTIME_DEPS="libintl"

RUN \
    apk add --update $RUNTIME_DEPS && \
    apk add --virtual build_deps $BUILD_DEPS &&  \
    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
    apk del build_deps


