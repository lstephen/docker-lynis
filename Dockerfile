FROM alpine:3.3
MAINTAINER Levi Stephen <levi.stephen@gmail.com>

RUN apk --update add bash curl openssl

ENV LYNIS_VERSION 2.2.0

RUN curl -sSL https://cisofy.com/files/lynis-$LYNIS_VERSION.tar.gz | tar zx -C /usr/local

ENTRYPOINT ["/usr/local/lynis/lynis"]

CMD ["show", "help"]
