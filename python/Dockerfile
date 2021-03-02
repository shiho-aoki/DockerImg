FROM node:10.22
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM zterm

RUN apt-get install -y vim less
RUN apt-get install python3
RUN apt-get install -y python3-pip
RUN python3 -m pip install --upgrade pip setuptools
COPY requirements.txt ./
RUN pip install -r requirements.txt
WORKDIR /user/dagportal
RUN npm install --save prop-types