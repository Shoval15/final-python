#!/bin/bash
# update the instance
sudo yum update
# install docker
sudo yum install docker
# execute docker commands without using sudo
sudo usermod -a -G docker ec2-user
