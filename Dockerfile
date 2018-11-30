FROM ruby:2.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /songs-api
WORKDIR /songs-api

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
COPY Gemfile /songs-api/Gemfile
COPY Gemfile.lock /songs-api/Gemfile.lock
RUN bundle install
COPY . /songs-api