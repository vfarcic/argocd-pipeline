FROM debian:8.11-slim

RUN apt update \
    && apt -y install curl git  \
    && curl -sfL -o /usr/local/bin/kyml https://github.com/frigus02/kyml/releases/download/v20190906/kyml_20190906_linux_amd64 \
    && chmod +x /usr/local/bin/kyml \
    && rm -rf /var/lib/apt/lists/*
