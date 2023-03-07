#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath="manuelw83/sklearn"
app=sklearn

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $app --image=$dockerpath:latest --wait=true

# you just have to wait a few seconds until the pod is ready
sleep 2

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods 



# Step 4:
# Forward the container port to a host
kubectl port-forward $app 8000:80

