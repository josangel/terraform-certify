#!/bin/bash
echo "Hello, World!" > saludo.txt
yum update -y
yum install httpd -y
systemctl enable httpd
systemctl start httpd
