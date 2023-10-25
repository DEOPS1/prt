# Use the official Ubuntu as the base image
FROM ubuntu:latest

# Install Apache2 and other dependencies
RUN apt-get update && apt-get install -y apache2

# Copy your custom index.html file to the Apache web root directory
COPY index.html /var/www/html/index.html

# Expose port 80 to the host
EXPOSE 80

# Start Apache2 in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]

