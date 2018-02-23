FROM golang:1.10.0-alpine3.7
LABEL author="Cody Oss"

ENV DEP_VERSION="0.4.1"

RUN apk update; \
    apk add --no-cache \
        ca-certificates \
        curl \
        git \
        make \
        openssl; \
    curl -L -s https://github.com/golang/dep/releases/download/v${DEP_VERSION}/dep-linux-amd64 -o /bin/dep; \
    chmod +x /bin/dep; \
    rm -rf /var/cache/apk/*; \
    rm -rf /tmp/*;
