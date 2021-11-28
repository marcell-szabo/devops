FROM node:latest
RUN apt-get update -y && apt install default-jre -y && \
    npm install -g selenium-side-runner && \
    npm install -g chromedriver && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt install  ./google-chrome-stable_current_amd64.deb -y
COPY ./devops.side ./
ENTRYPOINT bash
#docker run --network host 