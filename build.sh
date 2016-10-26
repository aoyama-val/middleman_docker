#!/bin/sh

docker run -p 4567:4567 -v "$PWD/source":/usr/src/web/source -v "$PWD/build":/usr/src/web/build aoyamaval/middleman bundle exec middleman build
