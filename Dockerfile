FROM ubuntu:20.04
RUN apt-get update

# https://www.swi-prolog.org/build/PPA.html
RUN apt-get install -y --no-install-recommends software-properties-common
RUN apt-add-repository ppa:swi-prolog/devel
RUN apt-get update
RUN apt-get install -y --no-install-recommends swi-prolog

CMD [ "swipl" ]
