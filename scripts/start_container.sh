#!/bin/bash
docker pull final-python:latest
docker run -d -p 80:5000 --name final-python-con final-python:latest
