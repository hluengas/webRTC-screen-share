#!/usr/bin/env fish

sudo podman build -t webrtc_nginx:test -f ./Dockerfile

sudo podman stop webrtc_nginx

sudo podman rm webrtc_nginx

sudo podman run -d -p 8080:80 --name webrtc_nginx webrtc_nginx:test