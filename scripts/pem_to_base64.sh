#!/bin/bash
for pem in ./*.pem; 
do
openssl base64 -in $pem -out "${pem%.pem}-base64.txt";
done
