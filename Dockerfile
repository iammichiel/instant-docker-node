FROM node:8-jessie

MAINTAINER Michiel Missotten <michiel@lil-web.fr>

RUN apt-get update && apt-get install sudo -y && apt-get clean

ENTRYPOINT ["/bin/sh", "-c"]
