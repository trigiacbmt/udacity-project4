#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="thong19981110vn/project4:v1.0.0"
echo "Docker ID: $dockerpath"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prediction-app --image=$dockerpath --port=80 --labels app=thong1998

# Step 3:
# List kubernetes pods
sleep 100
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward prediction-app 8000:80
