#!/bin/bash

# Install Requirements
sudo apt-get -y update;
sudo apt-get -y upgrade;
sudo apt-get install -y golang;
sudo apt-get install -y subfinder;
sudo apt-get install -y amass;
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
mv go/bin/httpx /usr/bin/ 
sudo apt-get -y update;
sudo apt-get -y upgrade;

echo "Requirements installation finished";

#Abinesh M
#Security Researcher and Bug Hunter
#Follow me on linkedin.com/in/abinesh-m20/
