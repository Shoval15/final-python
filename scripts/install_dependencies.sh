#!/bin/bash
# update the instance
sudo yum update -y
# install docker
sudo yum install docker -y
# start the Docker service
sudo service docker start

# execute docker commands without using sudo
sudo usermod -a -G docker ec2-user
