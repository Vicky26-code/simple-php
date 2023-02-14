#!/bin/bash
# Run this command to update
yum update -y
# Install Git package using yum
yum install git -y
#install apache service with yum
yum install httpd -y
# Run this command to start apache service
systemctl start httpd
# Run this command to enable apache service
systemctl enable httpd.service
# clone 
cd /home/ec2-user &&  git clone https://github.com/SarbudeenDeveloper/PHP-Database-Connection.git 
# Copy the cloned file inside html folder 
cp -r /home/ec2-user/PHP-Database-Connection/* /var/www/html/
# Run this command to restart apache service
systemctl restart httpd