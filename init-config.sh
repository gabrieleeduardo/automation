#!/bin/bash
set -e

# Detecta a distribuição
if [ -f /etc/debian_version ]; then
    echo "Debian/Ubuntu detected. Installing Ansible..."
    sudo apt update
    sudo apt install -y software-properties-common
    sudo add-apt-repository --yes --update ppa:ansible/ansible
    sudo apt install -y ansible
elif [ -f /etc/redhat-release ]; then
    echo "RedHat/CentOS detected. Installing Ansible..."
    sudo yum install -y epel-release
    sudo yum install -y ansible
else
    echo "Unsupported OS. Please install Ansible manually."
    exit 1
fi

echo "Ansible installed successfully!"