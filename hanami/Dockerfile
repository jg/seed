FROM ruby:2.6.4

RUN groupadd -g 1000 jg
RUN useradd -r -u 1000 -g jg jg
RUN adduser jg sudo

RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y postgresql-client

RUN mkdir /srv/app
RUN chown jg /srv/app

USER jg

WORKDIR /srv/app
ADD Gemfile /srv/app/
ADD Gemfile.lock /srv/app/

