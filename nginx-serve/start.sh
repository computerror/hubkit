#!/bin/bash
# When this Docker image is launched, a new key and certificate are always generated before Nginx starts listening on 80 and 443.

if [[ ! -f /etc/nginx/ssl/server.crt || ! -f /etc/nginx/ssl/server.crt ]]; then
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt -subj '/CN=www.example.com' 
fi

nginx -g 'daemon off;

