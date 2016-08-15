#!/bin/bash
yum update -y
yum install httpd -y
yum install vim -y
yum install epel-release -y
systemctl start httpd
systemctl enable httpd
yum install firewalld -y
systemctl start firewalld
firewall-cmd --permanent --add-service=http
systemctl restart firewalld
yum install mariadb-server mariadb -y
systemctl start mariadb
systemctl enable mariadb
yum install php php-mysql php-gd php-pear -y
yum install php* -y
