# 🔑 Metasploit Cheat Sheet

## Basics
- `msfconsole` : Launch the framework
- `search <keyword>` : Search for a module (exploit, payload, auxiliary)
- `use <module_path>` : Select a module
- `info` : Show detailed information about the current module
- `show options` : List required and optional parameters

## Configuration
- `set RHOSTS <IP>` : Set the target IP address
- `set LHOST <IP>` : Set your local listening IP
- `set LPORT <Port>` : Set the local listening port
- `set PAYLOAD <payload_path>` : Select a specific payload

## Execution
- `exploit` or `run` : Execute the module
- `sessions -l` : List all active sessions
- `sessions -i <id>` : Interact with a specific session
- `background` : Put the current session in the background

## Post-Exploitation
- `getuid` : Get the current user ID
- `sysinfo` : Get system information
- `shell` : Drop into a system shell
