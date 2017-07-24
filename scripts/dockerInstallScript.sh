#!/bin/bash

# docker installation
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum install docker-ce
sudo systemctl start docker


