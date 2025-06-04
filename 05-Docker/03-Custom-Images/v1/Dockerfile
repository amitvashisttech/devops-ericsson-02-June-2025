# Base Images
FROM ubuntu:noble

# Update the Apt Repo
RUN apt-get update 

# Install Apache Packages 
RUN apt-get install apache2 -y 

# Execute the Service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"] 
