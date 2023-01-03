#!/bin/bash

# Script started
echo "Enter the folder name to create:"; read folder_name
mkdir /root/SubdomainEnum
mkdir /root/SubdomainEnum/$folder_name
cd /root/SubdomainEnum/$folder_name

echo "Enter the Domain name:"; read Domain
subfinder -d $Domain -o subdomains-from-subfinder.txt | tee -a Subdomains.txt;
amass enum -d $Domain -o subdomains-from-amass.txt | tee -a Subdomains.txt;
cat Subdomains.txt | sort | uniq | tee -a Sorted-Subdomains.txt;
cat Sorted-Subdomains.txt | httpx -mc 200,302,403 -o Active-Subdomains.txt;

rm subdomains-from-subfinder.txt && rm subdomains-from-amass.txt
rm Sorted-Subdomains.txt

# Script Ended

#Abinesh M
#Security Researcher and Bug Hunter
#Follow me on linkedin.com/in/abinesh-m20/
