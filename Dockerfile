FROM alpine:latest

RUN apk  update \
    && apk add runc bash openjdk11-jdk maven git \
    && apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing buildah kubectl \
    && java --version && buildah version && kubectl version --client=true && mvn -version && git version
