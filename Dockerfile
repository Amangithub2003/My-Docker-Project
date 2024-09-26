# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set the maintainer information
LABEL maintainer="your-email@example.com"

# Update the system and install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    git \
    python3 \
    python3-pip

# Set an environment variable
ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME

# Copy local files to the container (Optional if you have local app files)
# COPY . .

# Install any Python dependencies (if you have a Python app)
# RUN pip3 install -r requirements.txt

# Expose a port (optional if the container is running a web server)
# EXPOSE 8080

# Define the default command to run when the container starts
CMD ["/bin/bash"]

