#!/bin/bash

# This script is used to build the slides, clean the slides, start the web
# server at the background and kill it if the user wants to.

# 1. Function to ensure that docker is installed
ensure_docker_installed() {
    if command -v docker &> /dev/null; then
        # return non zero if docker is installed
        return 1
    fi
    return 0
}

# 2. Function to install docker and add current user to the docker group
install_docker() {
    echo "Installing Docker..."
    sudo apt-get update
    sudo apt-get install -y docker.io
    # enable and start docker if systemd is available
    if command -v systemctl &> /dev/null; then
        echo "Enabling and starting Docker service..."
        sudo systemctl enable docker
        sudo systemctl start docker
    else
        # we're probably running inside a container, so just start dockerd
        # in background redirecting all output to /dev/null
        echo "Starting Docker service..."
        sudo dockerd > /dev/null 2>&1 &
    fi
    # add current user to the docker group
    sudo usermod -aG docker $USER
    return 0
}

# 3. Function to build the slides through the diegoascanio/cefetmg:slides
# docker image
build_slides() {
    echo "Building slides..."
    newgrp docker<<END
docker run --rm -v "$(pwd)":/workspace diegoascanio/cefetmg:slides make
END
    return 0
}

# 4. Function to clean the slides
clean_slides() {
    echo "Cleaning slides..."
    newgrp docker<<END
docker run --rm -v "$(pwd)":/workspace diegoascanio/cefetmg:slides make clean
END
    return 0
}

# 5. Function to start the web server at the background
start_web_server() {
    echo "Starting local web server..."
    newgrp docker<<END
docker run --name wserver --rm -d -p 8000:8000 -v "$(pwd)":/workspace diegoascanio/cefetmg:slides ./simple_http.sh &
END
}

# 6. Function to kill the web server
kill_web_server() {
    echo "Killing local web server..."
    newgrp docker<<END
docker stop wserver
END
}

# 7. Main script logic
# 7.1 Install Docker if not installed

ensure_docker_installed
docker_installed=$?
if [ $docker_installed -eq 0 ]; then
    echo "Docker is not installed. Installing Docker..."
    install_docker
    if [ $? -ne 0 ]; then
        echo "Failed to install Docker. Exiting."
        exit 1
    fi
fi

# 7.2 Read the argument
if [ $# -eq 0 ]; then
    echo "No arguments provided. Usage: $0 [build|clean|start-web-sever|kill-web-server]"
    exit 1
fi

# 7.3 Execute the appropriate function based on the argument
case $1 in
    build)
        build_slides
        ;;
    clean)
        clean_slides
        ;;
    start-web-server)
        start_web_server
        ;;
    kill-web-server)
        kill_web_server
        ;;
    *)
        echo "Invalid argument: $1. Usage: $0 [build|clean|start-web-server|kill-web-server]"
        exit 1
        ;;
esac
