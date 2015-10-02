FROM rails:4.2.2
MAINTAINER Flavio Castelli <fcastelli@suse.com>

WORKDIR /portus
ADD . /portus
RUN bundle install --retry=3

ENV COMPOSE=1

EXPOSE 3000
