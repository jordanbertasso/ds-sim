FROM alpine:3.13.2

RUN apk add git vim make gcc libc-dev libxml2-dev

RUN git clone https://github.com/distsys-MQ/ds-sim

WORKDIR ./ds-sim/src

RUN make all

EXPOSE 50000

CMD ["./ds-server"]

