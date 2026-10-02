# 📚 The Beginner's Journey to Pentesting

Becoming a great pentester isn't about knowing one tool; it's about understanding how systems work and how to break them logically. Here is your roadmap.

## 🗺️ The Learning Path

### Phase 1: Fundamentals (The "How it Works" Stage)
Before you can break it, you must understand it.
- **Networking**: TCP/IP, DNS, HTTP/S, SSH, SMB, DHCP. (Resource: *Network+* materials or *Professor Messer* on YouTube).
- **Linux Basics**: Command line, file permissions, bash scripting, package management. (Resource: *OverTheWire: Bandit*).
- **Windows Basics**: Active Directory, Registry, PowerShell.

### Phase 2: Reconnaissance & Information Gathering
The most important part of any pentest.
- **Passive Recon**: Google Dorks, Shodan, WHOIS, DNS enumeration.
- **Active Recon**: Port scanning, service identification, directory brute-forcing.
- **Tools to Master**: `nmap`, `dig`, `whois`, `ffuf`, `gobuster`.

### Phase 3: Vulnerability Analysis
Finding the "way in".
- **Web Vulnerabilities**: OWASP Top 10 (SQLi, XSS, CSRF, IDOR). (Resource: *PortSwigger Academy* - Highly Recommended).
- **Network Vulnerabilities**: Misconfigurations, outdated software, weak passwords.
- **Tools to Master**: `nikto`, `nmap` scripts (`--script`), `Burp Suite`.

### Phase 4: Exploitation
Taking control.
- **Metasploit Framework**: Learning the basics of modules and payloads.
- **Manual Exploitation**: Using searchsploit or GitHub PoCs.
- **Privilege Escalation**: Moving from a low-privilege user to Root/SYSTEM.
- **Tools to Master**: `msfconsole`, `sqlmap`, `netcat`.

### Phase 5: Reporting & Remediation
The professional part of the job.
- Learning how to document findings.
- Suggesting fixes to the client.
- Understanding the risk levels (CVSS).

## 🏆 Recommended Resources

### 💻 Practice Labs (Hands-on)
- **TryHackMe**: Excellent for absolute beginners.
- **Hack The Box**: More challenging, great for intermediate growth.
- **VulnHub**: Downloadable VMs for offline practice.
- **PortSwigger Academy**: The gold standard for web security.

### 📖 Books & Guides
- *The Hacker's Playbook* by Peter Kim.
- *Web Application Hacker's Handbook* by Dafydd Stuttard.
- *RTFM* (Read The F***ing Manual) - The most important skill is reading documentation.

### 📺 YouTube Channels
- **IppSec**: The best walkthroughs for HackTheBox.
- **The Cyber Mentor**: Great for structured courses.
- **John Hammond**: Great for CTF and malware analysis.
