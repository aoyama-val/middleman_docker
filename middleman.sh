#!/bin/sh

docker run -it -p 4567:4567 \
	-v "$PWD/source":/usr/src/web/source \
	-v "$PWD/build":/usr/src/web/build \
	-v "$PWD/data":/usr/src/web/data \
	aoyamaval/middleman \
	bundle exec middleman "$@"

