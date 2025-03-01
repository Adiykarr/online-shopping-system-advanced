#!/bin/bash

# Define the repository URL
REPO_URL="https://github.com/PuneethReddyHC/online-shopping-system-advanced.git"

# Find the running container with 'phpwebsite' in its image name
CONTAINER_ID=$(docker ps --filter "ancestor=adinath25/phpwebsite" --format "{{.ID}}")

# Check if a container was found
if [ -z "$CONTAINER_ID" ]; then
    echo "❌ Error: No running container found for image 'adinath25/phpwebsite'"
    exit 1
fi

echo "✅ Found running container: $CONTAINER_ID"

# Install Git inside the container (if not installed)
# docker exec -i "$CONTAINER_ID" bash -c "apt update && apt install -y git"

# Clone the repository inside the container at /opt/lampp/htdocs/www
docker exec -i "$CONTAINER_ID" bash -c "git clone $REPO_URL /opt/lampp/htdocs/www"

echo "✅ Repository cloned successfully inside the container at /opt/lampp/htdocs/www"