FROM debian:jessie-slim
LABEL maintainer="aj@garcialagar.es"
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Madrid

RUN apt-get update && apt-get install -y --no-install-recommends apt-transport-https ca-certificates
RUN apt-get upgrade -y && rm -rf /var/lib/apt/lists/*
RUN useradd -m -s /bin/bash user
