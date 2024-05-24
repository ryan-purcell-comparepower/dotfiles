#!/bin/bash

cert_folder=$HOME/Documents/certs/csr/new

if [ ! -d $cert_folder ]; then
    mkdir -p $cert_folder
fi
openssl req -new -newkey rsa:2048 -nodes -keyout $cert_folder/comparepower.com.key -out $cert_folder/comparepower.com.csr -subj "/C=US/ST=Texas/L=Dallas/O=Compare Power LLC/OU=IT Dept/CN=comparepower.com"
