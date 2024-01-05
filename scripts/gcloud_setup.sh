#!/bin/bash

# update packages
sudo apt update

# install necessary packages
sudo apt install apt-transport-https ca-certificates gnupg curl sudo

# import google cloud key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg

# add package source 
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# install cli
sudo apt-get update && sudo apt-get install google-cloud-cli

# login (will open browser to auth)
gcloud auth application-default login
