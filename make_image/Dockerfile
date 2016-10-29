#
# Middleman static website baseimage docker image
#
# http://github.com/tenstartups/middleman-docker
#

FROM alpine:3.4

MAINTAINER AOYAMA Shotaro <aoyama@val.co.jp>

# Set environment.
ENV \
  TERM=xterm-color \
  HOME=/home/middleman

# Install base packages.
RUN \
  apk --update add build-base git graphviz libffi-dev libxml2-dev libxslt-dev \
               nodejs openssl-dev rsync ruby ruby-bigdecimal ruby-bundler \
               ruby-dev ruby-io-console ruby-irb ruby-json ruby-nokogiri \
               zlib-dev && \
  rm -rf /var/cache/apk/*

# Define working directory.
WORKDIR ${HOME}

# Install ruby gems.
RUN \
  echo "gem: --no-document" > ${HOME}/.gemrc && \
  gem install bundler --no-document

# Add files.
COPY entrypoint.rb /docker-entrypoint
COPY bundle-delete.sh /usr/local/bin/bundle-delete

# Define working directory.
WORKDIR /usr/src/web

# Define the entrypoint
ENTRYPOINT ["/docker-entrypoint"]

# Expose ports.
EXPOSE 4567

# Copy the Gemfile into place and bundle.
ONBUILD ADD Gemfile /usr/src/web/Gemfile
ONBUILD ADD Gemfile.lock /usr/src/web/Gemfile.lock
ONBUILD RUN \
  rm -rf .bundle && \
  bundle config build.nokogiri --use-system-libraries && \
  bundle install --retry 10 --deployment

# Copy the rest of the application into place.
ONBUILD ADD . /usr/src/web

# Build the static website.
ONBUILD RUN bundle exec middleman build
