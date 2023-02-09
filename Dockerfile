FROM alpine as hugo
ARG BUILDKIT_SBOM_SCAN_STAGE=true
WORKDIR /src
COPY <<config.yml ./
title: My Hugo website
config.yml
RUN apk add --upgrade hugo && hugo

FROM scratch
COPY --from=hugo /src/public /
