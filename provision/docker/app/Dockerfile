FROM python:3.6.4-alpine

MAINTAINER Luis Mayta <@slovacus>

ARG stage

LABEL NAME zsh-flutter-app-$stage

ENV PACKAGES bash \
  zsh \
  curl \
  bison \
  build-base \
  git \
  gcc \
  libc-dev \
  libmagic \
  linux-headers \
  make \
  musl-dev \
  openssl \
  pcre-dev \
  zlib-dev

COPY Pipfile Pipfile.lock /usr/src/

# set working directory to /usr/src/
WORKDIR /usr/src/

RUN apk add --no-cache --update $PACKAGES \
  && pip3 install pipenv \
  && pipenv install --ignore-pipfile --system
