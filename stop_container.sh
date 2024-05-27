#!/bin/bash
set -e

# Stop and remove the running containers
docker ps -q | while read -r containerid; do
    echo "Stopping and removing container $containerid"
    docker rm -f "$containerid"
done
