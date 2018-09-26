FROM docker:18.09.1-ce

ENV JEKYLL_VERSION 3.7.2

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    curl \
    bash \
    jq \
    git \
    openssl-dev \
    libffi-dev \
    ruby \
  && rm -rf /var/cache/apk/*

RUN pip install awscli
RUN gem update && \
    gem install bundler && \
    gem install jekyll -v $JEKYLL_VERSION

ENTRYPOINT /bin/bash