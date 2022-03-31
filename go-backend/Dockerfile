FROM golang:stretch as build-reflex
RUN apt update && \
    apt upgrade && \
    apt install bash git && \
    rm -rf /var/cache/apt/*

RUN go get github.com/cespare/reflex

FROM golang:stretch
COPY --from=build-reflex /go/bin/reflex /go/bin/reflex

RUN apt update && \
    apt upgrade && \
    apt install bash git build-essential jq -y && \
    rm -rf /var/cache/apt/*

ENV GOOS=linux \
    GOARCH=amd64 \
    CGO_ENABLED=0

WORKDIR /app
USER root
