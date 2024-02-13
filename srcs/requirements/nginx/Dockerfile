FROM debian:buster

RUN apt update
RUN apt install -y nginx

# Create SSL/TLS directory & generate certificate
RUN mkdir -p /etc/nginx/ssl
RUN apt install -y openssl
RUN openssl req -x509 -nodes \
	-out /etc/nginx/ssl/tls.crt \
	-keyout /etc/nginx/ssl/tls.key \
	-subj "/C=ES/ST=Malaga/O=42/OU=42/CN=vnaslund.42.fr/UID=vnaslund"

# Prepare configuration file
RUN mkdir -p /var/run/nginx
COPY ./conf/nginx.conf /etc/nginx/sites-available/default

# Set permissions for NGINX document root
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

RUN mkdir -p /run/nginx

# Expose port
EXPOSE 443

# Command to run when container starts
CMD ["nginx", "-g", "daemon off;"]