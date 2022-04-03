FROM golang:1.9

RUN apt update -y && \
    apt upgrade -y && \
    apt install bash git build-essential jq -y && \
    rm -rf /var/cache/apt/*

ENV GOOS=linux \
    GOARCH=amd64 \
    CGO_ENABLED=0

WORKDIR /app/api