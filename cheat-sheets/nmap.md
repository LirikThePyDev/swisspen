# 🔍 Nmap Cheat Sheet

## Basic Scans
- `nmap <target>` : Default scan (Top 1000 ports)
- `nmap -F <target>` : Fast scan (Top 100 ports)
- `nmap -p- <target>` : Scan all 65535 ports

## Service & OS Detection
- `nmap -sV <target>` : Probe open ports to determine service/version info
- `nmap -O <target>` : Enable OS detection
- `nmap -A <target>` : Aggressive scan (OS detection, version detection, script scanning, and traceroute)

## Scan Types
- `nmap -sS <target>` : Stealth SYN scan (Default if root)
- `nmap -sT <target>` : TCP Connect scan
- `nmap -sU <target>` : UDP scan

## Nmap Scripting Engine (NSE)
- `nmap --script <script_name> <target>` : Run a specific script
- `nmap --script "vuln" <target>` : Run all scripts in the 'vuln' category
- `nmap --script "default" <target>` : Run default scripts

## Output
- `nmap -oN <file> <target>` : Normal output to file
- `nmap -oX <file> <target>` : XML output (good for importing into other tools)
