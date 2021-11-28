#!/bin/bash

docker rmi -f ci-webapp
docker rmi $(docker images -f "dangling=true" -q)
cd /home/ec2-user/devops/ci
docker-compose up --build -d --force-recreate
