# Use an Ubuntu base image
FROM ubuntu:latest

# Update the package repository and install Apache2
RUN apt update && apt -y install apache2

# Copy custom index.html to the default Apache web root
COPY index.html /var/www/html/index.html

# Expose port 80 for Apache
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

