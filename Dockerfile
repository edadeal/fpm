FROM ubuntu:xenial

WORKDIR /usr/src

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        ruby ruby-dev \
        make \
        libffi-dev \
        devscripts \
        python3-dev python3-pip \
        git \
        && \
    apt-get autoremove -y && \
    apt-get clean all && \
    gem install fpm --no-rdoc --no-ri
