FROM ubuntu:17.10

RUN apt-get update -y \
    && apt-get install -y \
      build-essential \
      curl \
      python-pip \
      wget \
    && pip install awscli

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
