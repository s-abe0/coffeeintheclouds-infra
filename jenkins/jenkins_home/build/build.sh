#!/bin/bash

echo "****************************"
echo "*** BUILDING SITE ***"
echo "****************************"

docker run --rm --volume="$1:/srv/jekyll" --volume="$1/vendor/bundle:/usr/local/bundle" -i jekyll/jekyll:3.8 jekyll build
