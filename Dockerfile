FROM ubuntu:17.10

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update -y \
    && apt-get install -y \
      build-essential \
      curl \
      python-pip \
      wget \
    && pip install awscli \
    && curl -s https://raw.githubusercontent.com/kogosoftwarellc/bash-slack/master/slack-post-to-channel > /usr/local/bin/slack-post-to-channel \
    && chmod +x /usr/local/bin/slack-post-to-channel
