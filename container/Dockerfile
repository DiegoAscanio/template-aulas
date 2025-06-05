FROM ubuntu:latest

# Installs python, node and npm
RUN apt-get update && \
    apt-get install -y python3 nodejs npm python-is-python3

# Install marpit-cli package
RUN npm install -g @marp-team/marp-cli

# Set working directory
WORKDIR /workspace
