FROM ruby:2.6.4

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set timezone
RUN cp /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
RUN echo "Europe/Warsaw" > /etc/timezone

RUN mkdir /srv/app
WORKDIR /srv/app

# entrypoint
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

ADD Gemfile* /srv/app/
