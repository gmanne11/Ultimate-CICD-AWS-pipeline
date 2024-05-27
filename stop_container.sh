#!/bin/bash
set -e

# Stop the running containers
containerid=`docker ps | awk -F " " '{print$1}'`
docker rm -f "$containerid"
