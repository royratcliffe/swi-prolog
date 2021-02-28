FROM ubuntu:latest
RUN apt-get update

# https://www.swi-prolog.org/build/PPA.html
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:swi-prolog/devel
RUN apt-get update
RUN apt-get install -y swi-prolog

CMD [ "swipl" ]
