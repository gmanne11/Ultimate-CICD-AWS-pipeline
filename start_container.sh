#!/bin/bash
set -e

# Pull the image from Dockerhub
docker pull vivekmanne/simple-python-flask-app:latest 

# Run the image as a container
docker run -d -p 5000:5000 vivekmanne/simple-python-flask-app:latest

