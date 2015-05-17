FROM ubuntu:14.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential libncursesw5-dev libreadline-dev \
    libssl-dev libgdbm-dev libc6-dev libsqlite3-dev libxml2-dev libxslt-dev python python-dev python-setuptools && \
    apt-get clean && \
    easy_install locustio pyzmq

EXPOSE 8089 5557 5558
VOLUME /data/test
WORKDIR /data/test

ENTRYPOINT ["/usr/local/bin/locust"]
