#!/bin/bash

docker rmi -f ci-webapp
docker rmi $(docker images -f "dangling=true" -q)
cd /home/ec2-user/devops/ci
docker-compose up --build -d --force-recreate
sleep 40s
docker exec -it selenium selenium-side-runner -c "browserName=chrome goog:chromeOptions.args=[headless, no-sandbox, disable-dev-shm-usage, disable-infobars]" devops.side