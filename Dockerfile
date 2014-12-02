FROM ubuntu:14.04

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y git software-properties-common python-software-properties build-essential

RUN \
  add-apt-repository ppa:chris-lea/node.js && \
  apt-get update && \
  apt-get install -y nodejs

RUN \
  git clone https://github.com/e-jigsaw/seneca-sample.git && \
  cd seneca-sample/server-client && \
  npm install && \
  npm install -g coffee-script

EXPOSE 8080
CMD ["coffee", "/seneca-sample/server-client/server.coffee", "http", "8080"]

