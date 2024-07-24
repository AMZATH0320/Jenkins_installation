#!/bin/bash

# 1.update package mangers
sudo apt update -y


# 2. Install java
echo "installing java"
sudo apt install fontconfig openjdk-17-jre -y

# 3. check the version of java
echo "checking the version of java"
java -version

# 4. Jenkins pre setup
echo "starting the jenkin pre-setup"
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y

# 5. Check jenkin status
echo " checking jenkin status"
sudo systemctl status jenkins

# 6. Copy initialAdminPassword 
echo "opening secret initialadmin pasword"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

 echo "JENKINS INSTALLED SUCCESSFULLY"
