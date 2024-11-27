# Name of the container
CONTAINER_NAME="django-web"

# Check if the container is running
CONTAINER_ID=$(docker ps -q -f "name=$CONTAINER_NAME")

if [ -z "$CONTAINER_ID" ]; then
    echo "The container '$CONTAINER_NAME' is not running. Starting the container..."
    docker-compose up -d
else
    echo "The container '$CONTAINER_NAME' is already running."
fi

# Attach to the container
echo "Attaching to the container..."
docker exec -it $CONTAINER_NAME bash
