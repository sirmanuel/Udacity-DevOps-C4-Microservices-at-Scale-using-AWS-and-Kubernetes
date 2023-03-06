#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t sklearn . 

# Step 1b:
#delete intermediate images
docker rmi -f $(docker images -f "dangling=true" -q)

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run app
docker run --rm --name c-sklearn -p 8000:80 sklearn

