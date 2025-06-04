# Base Images
FROM ubuntu:noble

# Update the Apt Repo
RUN apt-get update 

# Install Apache Packages 
RUN apt-get install apache2 -y 

# Deploy Custom Web Page
COPY info.html /var/www/html/

# Expose 
EXPOSE 80

# Execute the Service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"] 
