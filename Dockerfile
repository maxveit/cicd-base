FROM adoptopenjdk/openjdk11-openj9:alpine

RUN apk update \
    && apk add bash \
    && apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing buildah kubectl \
    && java --version && buildah version && kubectl version --client=true 
