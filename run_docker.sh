#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build . -t buuthien2412/mydevops

# Step 2: 
docker image ls

# Step 3: 
docker run -d -p 8000:80 buuthien2412/mydevops
