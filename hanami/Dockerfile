FROM ruby:2.6.4

# setup non-root user
RUN groupadd -g 1000 jg
RUN useradd -r -u 1000 -g jg jg
RUN adduser jg sudo
RUN mkdir /home/jg
RUN chown jg /home/jg
RUN chgrp jg /home/jg
RUN apt-get update
RUN apt-get install -y sudo
RUN echo "jg     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER jg

# setup app dir & dependencies
RUN sudo mkdir /srv/app
RUN sudo chown jg /srv/app
RUN sudo apt-get install -y postgresql-client
WORKDIR /srv/app
ADD Gemfile /srv/app/
ADD Gemfile.lock /srv/app/

