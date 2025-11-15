# Use the official Ubuntu base image. Pull the latest Ubuntu image from Docker
# Hub using the following command:
#   docker pull ubuntu
# It defaults to 24.04.3 LTS (Noble Numbat) at the time of writing. The
# following command prints the version:
#   cat /etc/os-release
# See https://hub.docker.com/_/ubuntu for details.
FROM mcr.microsoft.com/devcontainers/base:noble

# https://www.swi-prolog.org/build/PPA.html
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository ppa:swi-prolog/devel && \
    apt-get update && \
    apt-get install -y swi-prolog && \
    rm -rf /var/lib/apt/lists/*

CMD [ "swipl" ]
