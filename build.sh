#!/bin/bash

docker buildx build --platform linux/amd64,linux/arm64 --push -t maktouch/ssh-tunnel:latest -t maktouch/ssh-tunnel:1.0.0 .