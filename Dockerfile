FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        bison flex libreadline-dev libc6-dev libfl-dev \
        wget vim make gcc curl unzip build-essential && \
    apt-get clean

RUN useradd -ms /bin/bash expos
USER expos
WORKDIR /home/expos

RUN curl -sSf https://raw.githubusercontent.com/eXpOSNitc/expos-bootstrap/main/download.sh | sh

WORKDIR /home/expos/myexpos

RUN make
