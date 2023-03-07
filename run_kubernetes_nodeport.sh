#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
deployment_name="sklearn-deployment"
dockerpath="manuelw83/sklearn"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment $deployment_name --image=$dockerpath:latest

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods 


# Step 4:
# Expose port via NodePort
kubectl expose deployment/$deployment_name --type="NodePort" --port 80


export NODE_PORT=$(kubectl get services/$deployment_name -o go-template='{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT


