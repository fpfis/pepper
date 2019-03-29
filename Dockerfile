FROM ubuntu:latest

RUN apt update; \
    apt dist-upgrade -y; \
    apt -y install python3-pip --no-install-recommends; \
    pip3 install salt-pepper setuptools; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*
