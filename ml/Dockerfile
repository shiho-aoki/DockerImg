FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y build-essential cmake clang libssl-dev vim
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN python3 -m pip install --upgrade pip setuptools

COPY requirements.txt ./
RUN pip install -r requirements.txt