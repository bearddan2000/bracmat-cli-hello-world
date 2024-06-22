FROM alpine:3.18.2

ENV BRACMAT_VERSION 6.19.2

RUN apk update && \
    apk add wget && \
    wget -O /usr/local/bin/bracmat https://github.com/BartJongejan/Bracmat/releases/download/v$BRACMAT_VERSION/bracmat-Linux && \
    chmod +x /usr/local/bin/bracmat

WORKDIR /code

COPY bin .

CMD "./run.sh"