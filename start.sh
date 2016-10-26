#!/bin/sh

docker run -it -p 4567:4567 -v "$PWD/source":/usr/src/web/source aoyamaval/middleman bundle exec middleman s
