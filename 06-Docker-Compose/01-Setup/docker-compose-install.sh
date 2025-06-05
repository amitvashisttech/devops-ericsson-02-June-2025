#!/bin/bash
# Install docker from Docker-ce repository
echo "[TASK 1] Install docker container engine"
curl -SL https://github.com/docker/compose/releases/download/v2.36.2/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose

# Enable docker service
echo "[TASK 2] Enable and start docker service"
chmod +x /usr/local/bin/docker-compose
