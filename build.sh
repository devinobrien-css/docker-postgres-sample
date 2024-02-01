#!/bin/bash

echo "-----------------------------"
echo "Building the image"
docker build -t my-postgres-image .

echo "-----------------------------"
echo "Running the container"
docker run -d --name my-postgres-container -p 5432:5432 my-postgres-image

echo "-----------------------------"
echo "Verifying the container is running"
docker ps