# Base Image - Official Alpine
FROM alpine

# Upgrade existing packages in the base image
RUN apk --no-cache upgrade

# Install apache from packages with out caching install files
RUN apk add --no-cache apache2


# Open port for httpd access
EXPOSE 80

# Run httpd in foreground so that the container does not quit
# soon after start
# To run this container in the back ground use the -d option
#
#     $ sudo docker run -d broadtech/alpine-apache2
#
CMD ["-D","FOREGROUND"]

# Srart httpd when container runs
ENTRYPOINT ["/usr/sbin/httpd"]

RUN echo "<html><h1>Welcome to Apache Web Server</h2><h4>Homework for DevOps spring school * SoftServe *</h4><p>By Oleksandr Lysenko</html>" > /var/www/localhost/htdocs/index.html
