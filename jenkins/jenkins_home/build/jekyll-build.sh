#!/bin/bash

echo "****************************"
echo "*** BUILDING JEKYLL SITE ***"
echo "****************************"

WORKSPACE=/home/shane/coffeeintheclouds-cicd/jenkins/jenkins_home/workspace/coffeeintheclouds
docker run --rm --volume="$WORKSPACE:/srv/jekyll" --volume="$WORKSPACE/vendor/bundle:/usr/local/bundle" -i jekyll/jekyll:3.8 jekyll build
