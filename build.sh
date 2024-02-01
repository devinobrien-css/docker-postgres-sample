#!/bin/bash

# Set your desired values
IMAGE_NAME="postgres-image"
CONTAINER_NAME="postgres-container"
LOCAL_PORT=5432

echo "-----------------------------"
echo "Building the image $IMAGE_NAME"
docker build -t $IMAGE_NAME .

echo 
echo 
echo "-----------------------------"
echo "Running the container"
if docker run -p $LOCAL_PORT:5432 --name $CONTAINER_NAME -d $IMAGE_NAME; then
    echo "-----------------------------"
    echo "Docker container $CONTAINER_NAME is running on port $LOCAL_PORT."
else
    echo "-----------------------------"
    echo "Failed to run the Docker container. Check your setup and try again."
    exit 1
fi

echo 
echo 
echo "-----------------------------"
echo "Docker container $CONTAINER_NAME is running on port $LOCAL_PORT."
echo "-----------------------------"
docker ps
echo "-----------------------------"