#!/bin/bash

yum update -y
yum upgrade -y
yum install -y nginx
cd /usr/share/nginx/html
wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip
yum install unzip
unzip 2135_mini_finance.zip
rm -rf 2135_mini_finance.zip index.nginx-debian.html
cd 2135_mini_finance/
mv * ../
rm -rf 2135_mini_finance/

systemctl enable nginx
systemctl restart nginx

yum install mysql-server -y
systemctl start mysqld
systemctl enable mysqld

yum amazon-linux-extras install aws-agent -y
