FROM node:latest

MAINTAINER Michiel Missotten <michiel@lil-web.fr>

RUN apt-get update && \
    apt-get install curl apt-transport-https sudo -y && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install yarn -y && \
    groupmod -g 1001 node \
    && usermod -u 1001 -g 1001 node

ENTRYPOINT ["/bin/sh", "-c"]
