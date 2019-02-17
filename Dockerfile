FROM debian:jessie-slim as builder

COPY qemu-arm-static /usr/bin/
COPY qemu-aarch64-static /usr/bin/

FROM builder

LABEL maintainer="Jay MOULIN <jaymoulin@gmail.com> <https://twitter.com/MoulinJay>"

RUN apt-get update && apt-get install -y twidge && apt-get clean

ENTRYPOINT ["twidge"]
