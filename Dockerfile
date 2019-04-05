FROM alpine:latest

RUN apk add --no-cache clang
RUN apk add --no-cache curl
RUN apk add --no-cache binutils
RUN apk add --no-cache gcc
RUN apk add --no-cache musl-dev
RUN apk add --no-cache make
RUN apk add --no-cache zlib
RUN apk add --no-cache zlib-dev
RUN apk add --no-cache openssl
RUN apk add --no-cache openssl-dev
RUN apk add --no-cache ca-certificates
RUN apk add --no-cache nghttp2
RUN apk add --no-cache nghttp2-dev

WORKDIR /
COPY . /

RUN /bin/sh build_source_pkgs.sh
