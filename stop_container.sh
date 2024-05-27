#!/bin/bash
set -e

# Stop the running containers
containerid=`docker ps | awk -F"" '{print$!}`
docker rm -f $containerid
