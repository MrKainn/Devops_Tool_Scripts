#!/bin/bash
# jenkins installation on ubuntu 
sudo apt update -y
#Installing Java (Requirement to install Jenkins
sudo apt install fontconfig openjdk-17-jre -y

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
  
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
# Updating the system with Jenkins configs
sudo apt-get update -y
# Installing Jenkins in Linux machine
sudo apt-get install jenkins -y 
# Enabling Jenkins Service
sudo systemctl enable jenkins
# Starting Jenkins Service
sudo systemctl start jenkins

# You can access Jenkins at pot 8080 of your machine
