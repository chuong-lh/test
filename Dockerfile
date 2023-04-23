FROM alpine as hugo
ARG BUILDKIT_SBOM_SCAN_STAGE=true
WORKDIR /src
COPY <<config.yml ./
title: My Hugo website
config.yml
RUN apk add --upgrade hugo && hugo

FROM registry.access.redhat.com/ubi8/nginx-118
COPY --from=hugo /src/public /
