#!/bin/bash


sudo yum update -y
sudo yum install -y mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation <<EOF

y
root
root
y
y
y
y
EOF

