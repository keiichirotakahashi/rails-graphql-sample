FROM ruby:3.2.2-slim
RUN apt-get update -qq && apt-get install -y \
  build-essential libpq-dev postgresql-client vim git
ENV APP_ROOT /rails-graphql-sample
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT
RUN gem install bundler
ADD Gemfile $APP_ROOT/Gemfile
ADD Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install
ADD . $APP_ROOT