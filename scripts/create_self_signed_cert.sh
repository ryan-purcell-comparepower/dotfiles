#!/bin/bash

cert_folder=$HOME/Documents/certs/self_signed/new

if [ ! -d $cert_folder ]; then
    mkdir -p $cert_folder
fi
openssl req -x509 -newkey rsa:4096 -keyout $cert_folder/key.pem -out $cert_folder/cert.crt -sha256 -days 3650 -nodes -subj "/C=US/ST=Texas/L=Dallas/O=Compare Power LLC/OU=IT Dept/CN=comparepower.com"

