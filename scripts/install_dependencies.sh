#!/bin/bash
# update the instance
sudo yum update -y
# install docker
sudo yum install docker -y
# start and enable the Docker service
sudo systemctl start docker
sudo systemctl enable docker

# execute docker commands without using sudo
sudo usermod -a -G docker ec2-user
newgrp docker
