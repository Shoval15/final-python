#!/bin/bash
# update the instance
sudo yum update -y
# install docker
sudo yum install docker -y
# start the Docker service
sudo service docker start

# execute docker commands without using sudo
sudo usermod -a -G docker ec2-user

# Install Docker Compose
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
