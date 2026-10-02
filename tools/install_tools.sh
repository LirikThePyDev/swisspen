#!/bin/bash

# Tool Installation Script for Pentester's Swiss Army Knife
# Target OS: Kali Linux / Debian / Ubuntu

echo "Updating package lists..."
sudo apt update

echo "Installing essential reconnaissance tools..."
sudo apt install -y nmap whois dnsutils nikto ffuf

echo "Installing exploitation tools..."
sudo apt install -y metasploit-framework sqlmap searchsploit

echo "Installing general utilities..."
sudo apt install -y curl wget git vim

echo "Installation complete! You can now run ./scripts/knife.sh"
