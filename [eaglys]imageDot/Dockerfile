FROM python:3.8
USER root

WORKDIR /root/imagedot/

COPY . .

RUN apt-get update
RUN apt-get install -y vim less
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools