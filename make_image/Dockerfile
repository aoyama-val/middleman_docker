FROM ruby:2.3.1
WORKDIR /middleman
RUN \
  apt-get update && \
  apt-get -y install nodejs && \
  gem install middleman middleman-livereload middleman-compass middleman-syntax redcarpet
COPY Gemfile /middleman/
COPY Gemfile.lock /middleman/
RUN bundle install
