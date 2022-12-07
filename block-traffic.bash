#!/bin/bash

# Update system
echo "Updating system..."
apt-get update

# Install Uncomplicated Firewall
echo "Installing Uncomplicated Firewall..."
apt-get install ufw

# Enable Uncomplicated Firewall
echo "Enabling Uncomplicated Firewall..."
ufw enable

# Block incoming traffic from USA
echo "Blocking incoming traffic from USA..."
ufw reject from any to any --src 0.0.0.0/0 --destination 0.0.0.0/0 --match src-country US

# Block incoming traffic from China
echo "Blocking incoming traffic from China..."
ufw reject from any to any --src 0.0.0.0/0 --destination 0.0.0.0/0 --match src-country CN

# Block incoming traffic from Russia
echo "Blocking incoming traffic from Russia..."
ufw reject from any to any --src 0.0.0.0/0 --destination 0.0.0.0/0 --match src-country RU

# Block incoming traffic from France
echo "Blocking incoming traffic from France..."
ufw reject from any to any --src 0.0.0.0/0 --destination 0.0.0.0/0 --match src-country FR
