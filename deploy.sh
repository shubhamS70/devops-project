#!/bin/bash
CONTAINER_NAME=mini-project
IMAGE_NAME=shubham7s/mini-project:latest

echo "Pulling latest image..."
docker pull $IMAGE_NAME

echo "Stopping old container..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Starting new container..."
docker run -d -p 80:80 --name $CONTAINER_NAME $IMAGE_NAME
