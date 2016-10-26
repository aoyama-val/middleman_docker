#!/bin/sh

docker run -p 4567:4567 -v "$PWD/source":/usr/src/web/source aoyamaval/middleman bundle exec middleman s
