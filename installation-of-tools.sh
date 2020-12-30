#!/usr/bin/env bash

echo "****Hello Plamen****";
echo "****Updating****";
sudo apt-get update;
echo "****Upgrading****";
sudo apt-get upgrade;
sudo apt install apt-transport-https ca-certificates curl software-properties-common;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable";
sudo apt update;
apt-cache policy docker-ce;

echo "****Installing Docker****";
sudo apt install docker-ce;
echo "****Checking the status of the docker deamon****";
sudo systemctl --no-pager status docker;

echo "****Installing Docker Compose****";
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose;
sudo chmod +x /usr/local/bin/docker-compose;

echo "****Checking Docker Compose installation****";
docker–compose –version;

