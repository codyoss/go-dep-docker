FROM golang:1.9.2-alpine3.6
LABEL author="Cody Oss"

ENV DEP_VERSION="0.3.2"

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