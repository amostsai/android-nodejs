# Learning from beevelop. Thanks!!

FROM amostsai/android

MAINTAINER Amos Tsai <amos.tsai@gmail.com>

ENV NODEJS_VERSION=8.6.0 \
    PATH=$PATH:/opt/node/bin

WORKDIR "/opt/node"

RUN apt-get update && apt-get install -y curl ca-certificates --no-install-recommends && \
    curl -sL https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz | tar xz --strip-components=1 && \
    rm -rf /var/lib/apt/lists/* && \
    npm install npm@latest -g && \
    npm cache clear --force && \
    apt-get clean
