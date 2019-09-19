FROM ruby:2.6.4

RUN apt-get update -qq && apt-get install -y postgresql-client

RUN mkdir /srv/app
WORKDIR /srv/app
ADD Gemfile /srv/app/
ADD Gemfile.lock /srv/app/

