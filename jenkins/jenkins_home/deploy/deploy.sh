#!/bin/bash

echo ************************
echo **** DEPLOYING SITE ****
echo ************************

docker cp /var/jenkins_home/workspace/coffeeintheclouds/_site/ nginx:/usr/share/nginx/html/
