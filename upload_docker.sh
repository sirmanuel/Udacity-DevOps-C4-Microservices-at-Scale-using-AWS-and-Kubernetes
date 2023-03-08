#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerID=manuelw83
image_path=sklearn
dockerpath=$dockerID/$image_path

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag sklearn $dockerpath:latest

# Step 3:
# Push image to a docker repository
cat ./../my_docker_pw.txt | docker login --username $dockerID --password-stdin
docker push $dockerpath:latest
