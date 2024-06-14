FROM ubuntu:latest

# Install Apache
RUN apt-get update && apt-get install -y apache2

# Copy the website content
COPY . /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2ctl", "-D", "FOREGROUND"]
