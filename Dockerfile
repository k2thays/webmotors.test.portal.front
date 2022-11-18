FROM ruby:3.1-slim

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

WORKDIR /webmotors.portal_front_test/
COPY . /webmotors.portal_front_test/

RUN apt-get update -y && \
  apt-get install -y \
  build-essential \
  wget \
  zip unzip \
  chromium

RUN gem install bundler && bundle install
RUN ruby webdrivers.rb