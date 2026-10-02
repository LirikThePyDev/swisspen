#!/bin/bash

# Colors for better UI
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Banner
clear
echo -e "${BLUE}======================================================================"
echo -e "${BLUE}            🛠️  PENTESTER'S SWISS ARMY KNIFE  🛠️"
echo -e "${BLUE}======================================================================"
echo -e "${YELLOW}  Disclaimer: Use only on authorized targets!${NC}"
echo -e "${BLUE}======================================================================${NC}\n"

# Main Menu
show_menu() {
    echo -e "${GREEN}Main Menu:${NC}"
    echo "1) 🔍 Reconnaissance"
    echo "2) 🌐 Web Analysis"
    echo "3) 🔑 Exploitation"
    echo "4) 📄 Cheat Sheets"
    echo "5) ⚙️ System Tools"
    echo "0) Exit"
    echo -n -e "\n${YELLOW}Choose an option: ${NC}"
}

# Recon Menu
recon_menu() {
    echo -e "\n${GREEN}🔍 Reconnaissance Menu:${NC}"
    echo "1) Fast Nmap Scan (Top 100 ports)"
    echo "2) Full Nmap Scan (All ports, OS detect, Services)"
    echo "3) DNS Enumeration (dig)"
    echo "4) WHOIS Lookup"
    echo "5) Go Back"
    echo -n -e "\n${YELLOW}Choose an option: ${NC}"
    read choice
    case $choice in
        1) echo -n "Enter Target IP: "; read target; nmap -F $target ;;
        2) echo -n "Enter Target IP: "; read target; nmap -p- -A $target ;;
        3) echo -n "Enter Domain: "; read target; dig $target ANY ;;
        4) echo -n "Enter Domain: "; read target; whois $target ;;
        5) return ;;
    esac
}

# Web Menu
web_menu() {
    echo -e "\n${GREEN}🌐 Web Analysis Menu:${NC}"
    echo "1) Directory Brute-force (ffuf)"
    echo "2) Web Vulnerability Scan (Nikto)"
    echo "3) Go Back"
    echo -n -e "\n${YELLOW}Choose an option: ${NC}"
    read choice
    case $choice in
        1)
           echo -n "Enter Target URL: "; read target
           echo -n "Enter Wordlist Path: "; read list
           ffuf -u $target/FUZZ -w $list ;;
        2)
           echo -n "Enter Target URL: "; read target
           nikto -h $target ;;
        3) return ;;
    esac
}

# Exploit Menu
exploit_menu() {
    echo -e "\n${GREEN}🔑 Exploitation Menu:${NC}"
    echo "1) Launch Metasploit (msfconsole)"
    echo "2) SQL Injection Scan (sqlmap)"
    echo "3) Searchsploit"
    echo "4) Go Back"
    echo -n -e "\n${YELLOW}Choose an option: ${NC}"
    read choice
    case $choice in
        1) msfconsole ;;
        2)
           echo -n "Enter Target URL: "; read target
           sqlmap -u $target --batch ;;
        3)
           echo -n "Enter Exploit Keyword: "; read keyword
           searchsploit $keyword ;;
        4) return ;;
    esac
}

# Cheat Sheet Menu
cheat_menu() {
    echo -e "\n${GREEN}📄 Cheat Sheets:${NC}"
    echo "1) Nmap"
    echo "2) Metasploit"
    echo "3) SQLmap"
    echo "4) Privilege Escalation"
    echo "5) Go Back"
    echo -n -e "\n${YELLOW}Choose an option: ${NC}"
    read choice
    case $choice in
        1) cat cheat-sheets/nmap.md ;;
        2) cat cheat-sheets/metasploit.md ;;
        3) cat cheat-sheets/sqlmap.md ;;
        4) cat cheat-sheets/privesc.md ;;
        5) return ;;
    esac
}

# System Menu
system_menu() {
    echo -e "\n${GREEN}⚙️ System Tools:${NC}"
    echo "1) Update System"
    echo "2) Install Missing Tools"
    echo "3) Go Back"
    echo -n -e "\n${YELLOW}Choose an option: ${NC}"
    read choice
    case $choice in
        1) sudo apt update && sudo apt upgrade -y ;;
        2) sudo ./tools/install_tools.sh ;;
        3) return ;;
    esac
}

# Loop
while true; do
    show_menu
    read choice
    case $choice in
        1) recon_menu ;;
        2) web_menu ;;
        3) exploit_menu ;;
        4) cheat_menu ;;
        5) system_menu ;;
        0) echo -e "${YELLOW}Happy Hacking! Stay Ethical.${NC}"; exit 0 ;;
        *) echo -e "${RED}Invalid option!${NC}" ;;
    esac
    echo -e "\nPress Enter to return to Main Menu..."
    read
    clear
    echo -e "${BLUE}======================================================================"
    echo -e "${BLUE}            🛠️  PENTESTER'S SWISS ARMY KNIFE  🛠️"
    echo -e "${BLUE}======================================================================"
    echo -e "${YELLOW}  Disclaimer: Use only on authorized targets!${NC}"
    echo -e "${BLUE}======================================================================${NC}\n"
done
