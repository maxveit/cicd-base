#FROM adoptopenjdk/openjdk11-openj9:alpine
FROM alpine:latest

RUN apk update
RUN apk add bash openjdk11-jdk maven git
RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing buildah kubectl
RUN java --version && buildah version && kubectl version --client=true && mvn -version
