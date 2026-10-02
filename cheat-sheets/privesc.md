# 🚀 Privilege Escalation Cheat Sheet

## Linux PrivEsc
### Information Gathering
- `whoami` : Check current user
- `id` : Check user and group IDs
- `uname -a` : Check kernel version
- `cat /etc/passwd` : List all users
- `sudo -l` : Check sudo permissions for the current user

### Common Vectors
- **SUID Binaries**: `find / -perm -4000 -type f 2>/dev/null`
- **Cron Jobs**: `cat /etc/crontab`
- **Writable /etc/passwd**: `ls -l /etc/passwd`
- **Kernel Exploits**: Search for the kernel version on Google or via `searchsploit`.

## Windows PrivEsc
### Information Gathering
- `whoami /all` : Check user privileges and groups
- `systeminfo` : Check OS version and patches
- `net user` : List users
- `net localgroup administrators` : List members of the Admin group

### Common Vectors
- **Unquoted Service Paths**: Search for services with spaces and no quotes.
- **Kernel Exploits**: Use `Watson` or `WinPEAS`.
- **Stored Credentials**: Check registry, config files, and memory.
- **Token Impersonation**: Use `incognito` in Metasploit.
