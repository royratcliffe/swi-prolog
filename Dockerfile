FROM ubuntu:20.04

# https://www.swi-prolog.org/build/PPA.html
RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common && \
    apt-add-repository ppa:swi-prolog/devel && \
    apt-get update && \
    apt-get install -y --no-install-recommends swi-prolog

CMD [ "swipl" ]
