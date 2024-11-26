FROM mcr.microsoft.com/devcontainers/python:3.10

# Install PostgreSQL Client
RUN apt-get update && apt-get install -y postgresql-client

# Set the working directory
WORKDIR /workspace

# Install Xdebug for debugging (if needed)
RUN pip install debugpy