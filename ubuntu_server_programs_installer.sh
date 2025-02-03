#!/usr/bin/bash

chmod +x ubuntu_server_programs_installer.sh
chmod +x ubuntu_server_programs_validator.sh


echo "Update & upgrade system"
sudo add-apt-repository universe -y
sudo apt update -y && sudo apt upgrade -y

echo "Installing Basic developer tools"
sudo apt install -y gnupg lsb-release software-properties-common apt-transport-https ca-certificates

echo "Installing Git"
sudo apt install -y git

echo "Installing Python 3 & pip"
sudo apt install -y python3 python3-venv python3-dev
echo "Upgrading pip"
sudo apt install -y python3-pip

echo "Installing Node.js"
sudo apt install -y nodejs npm

echo "Installing MySQL Server"
sudo apt install -y mysql-server

echo "Installing PostgreSQL"
sudo apt install -y postgresql postgresql-contrib

echo "Installing Docker"
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

echo "Installing Docker Compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Installing Nginx"
sudo apt install -y nginx

echo "Installing Certbot"
sudo apt install -y certbot python3-certbot-nginx

echo "Installing Redis"
sudo apt install -y redis-server

echo "Installing MongoDB"
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt update
sudo apt install -y mongodb-org

echo "Installing Supervisor"
sudo apt install -y supervisor

echo "Installing Fail2ban"
sudo apt install -y fail2ban

echo "Installing UFW"
sudo apt install -y ufw
sudo ufw allow OpenSSH
sudo ufw enable

# Validate programs after installation
./ubuntu_server_programs_validator.sh
