#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
export dockerpath=buuthien2412/mydevops

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mydevops --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mydevops 8000:80
