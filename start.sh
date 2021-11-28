#!/bin/bash

docker rmi -f ci-webapp
cd /home/ec2-user/devops/ci
docker-compose up --build -d --force-recreate
