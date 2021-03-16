FROM golang:1.15.2
USER root

WORKDIR /root/project

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["project"]