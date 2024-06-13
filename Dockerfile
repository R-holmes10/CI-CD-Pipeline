# Use an official Ubuntu as a parent image
FROM ubuntu:20.04

# Set environment variables to avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && \
    apt-get install -y apache2 git && \
    apt-get clean

# Copy website files to the Apache root directory
COPY . /var/www/html/

# Expose port 82 for the web server
EXPOSE 82

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
