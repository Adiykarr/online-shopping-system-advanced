#!/bin/bash

# Install Docker on both yum and apt-based systems
if command -v yum &>/dev/null; then
    sudo yum install docker -y
elif command -v apt &>/dev/null; then
    sudo apt install docker -y
else
    echo "Neither yum nor apt package manager found. Exiting."
    exit 1
fi

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Pull the Docker image
sudo docker pull adinath25/phpwebsite:latest

# Run the Docker container
sudo docker run -dt -p 8080:80/tcp adinath25/phpwebsite

echo "Docker container is running on port 8080"