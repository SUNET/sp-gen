FROM ubuntu:focal
RUN apt-get update && apt-get install -y shibboleth-sp-utils
