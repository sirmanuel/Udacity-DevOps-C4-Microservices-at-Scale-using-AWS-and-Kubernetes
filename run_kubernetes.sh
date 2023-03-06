#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="manuelw83/sklearn"


# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deployment sklearn --image=$dockerpath:latest
kubectl run sklearn --image=$dockerpath:latest --wait=true


# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods 

# Step 4:
# Forward the container port to a host
#see https://kubernetes.io/docs/tutorials/kubernetes-basics/expose/expose-interactive/
#kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080
kubectl port-forward sklearn 8000:80
