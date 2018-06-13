FROM debian:stretch
LABEL maintainer="aj@garcialagar.es"
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y apt-utils unattended-upgrades needrestart ca-certificates
RUN apt-get upgrade -y && rm -rf /var/lib/apt/lists/*
RUN useradd user
