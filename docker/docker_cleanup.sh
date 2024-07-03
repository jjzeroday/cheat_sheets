#!/bin/bash

# Usage:
# chmod +x docker_cleanup.sh
# sudo ./docker_cleanup.sh

# Stop and remove all containers
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

# Remove all images
docker rmi -f $(docker images -a -q)

# Remove all volumes
docker volume rm $(docker volume ls -q)

# Remove all networks
docker network rm $(docker network ls -q)

# Remove all build cache
docker builder prune -a
