#!/bin/bash

# Check if the container is running
CONTAINER_NAME="codespace-container"

CONTAINER_ID=$(docker ps -q -f "name=$CONTAINER_NAME")

if [ -z "$CONTAINER_ID" ]; then
    echo "Container '$CONTAINER_NAME' is not running."
    echo "Starting the container..."
    docker-compose up -d
else
    echo "Container '$CONTAINER_NAME' is already running."
fi

# Attach to the container
echo "Attaching to the container..."
docker exec -it $CONTAINER_NAME bash