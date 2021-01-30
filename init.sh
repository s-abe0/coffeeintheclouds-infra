#!/bin/bash

# Install docker
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl enable --now docker

# Install docker compose
curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Install contents in /opt directory
mkdir /opt/coffeeintheclouds/
cp -r jenkins/ /opt/coffeeintheclouds/
cp -r nginx/ /opt/coffeeintheclouds/
