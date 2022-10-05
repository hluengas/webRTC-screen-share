#!/usr/bin/env bash

sudo docker build -t webrtc_nginx:test -f ./Dockerfile

sudo docker stop webrtc_nginx

sudo docker rm webrtc_nginx

sudo docker run -d -p 8080:80 --name webrtc_nginx webrtc_nginx:test