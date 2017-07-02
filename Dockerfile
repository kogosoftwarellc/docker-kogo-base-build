FROM ubuntu:17.10

RUN apt-get update -y \
    && apt-get install -y \
      curl \
      python-pip \
      wget \
    && pip install awscli
