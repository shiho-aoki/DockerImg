FROM rhub/ubuntu-gcc-release:latest

USER root
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y
RUN apt install -y git build-essential cmake clang libssl-dev vim

WORKDIR /work/gnn
ENV LIB_PATH /work/gnn/lib

COPY . .

