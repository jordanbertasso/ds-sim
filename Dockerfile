FROM ubuntu:20.04

ARG TZ=Australia/Sydney
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y git vim make gcc libc-dev libxml2-dev

RUN git clone https://github.com/distsys-MQ/ds-sim

WORKDIR ./ds-sim/src

RUN make all

EXPOSE 50000

CMD ["./ds-server"]

