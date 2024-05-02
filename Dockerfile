FROM debian:stable-slim

ARG VERSION
ARG TARGETPLATFORM
LABEL maintainer="Jay MOULIN <https://jaymoulin.me>"
LABEL version="${VERSION}-${TARGETPLATFORM}"

RUN apt-get update && apt-get install --force-yes -y twidge && apt-get clean

ENTRYPOINT ["twidge"]
