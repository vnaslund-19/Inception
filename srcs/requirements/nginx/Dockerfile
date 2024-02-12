FROM debian:buster

RUN apt update
RUN apt install -y nginx

RUN mkdir -p /etc/nginx/ssl
RUN apt install -y openssl
RUN openssl req -x509 -nodes \
	-out /etc/nginx/ssl/tls.crt \
	-keyout /etc/nginx/ssl/tls.key \
	-subj "/C=ES/ST=Malaga/O=42/OU=42/CN=vnaslund.42.fr/UID=vnaslund"

