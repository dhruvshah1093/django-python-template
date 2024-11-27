# Use the official Python image as the base
FROM python:3.10

# Set the working directory
WORKDIR /workspace

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Install debugpy for VS Code debugging
RUN pip install debugpy

# Copy the requirements file
COPY .devcontainer/requirements.txt requirements.txt

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 8000

# Default command (can be overridden in docker-compose.yml)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]