FROM adoptopenjdk/openjdk11-openj9:alpine

RUN apk update
RUN apk add bash
RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing buildah
RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing kubectl

RUN java --version && buildah version && kubectl version
