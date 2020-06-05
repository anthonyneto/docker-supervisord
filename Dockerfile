FROM alpine:latest
LABEL maintainer "Anthony Neto <anthony.neto@gmail.com>"

RUN apk --no-cache add \
     supervisor

COPY supervisord.conf /supervisord.conf

CMD [ "/usr/bin/supervisord" ]
