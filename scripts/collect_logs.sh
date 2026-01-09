#!/usr/bin/env python3
# collect_logs.py
# Collects system info and writes to logs

import os
from datetime import datetime

log_file = "system_logs.txt"

with open(log_file, "a") as f:
    f.write(f"\n--- Log generated at {datetime.now()} ---\n")
    
    # Disk usage
    f.write("Disk Usage:\n")
    f.write(os.popen("df -h").read())
    
    # Memory usage
    f.write("\nMemory Usage:\n")
    f.write(os.popen("free -h").read())
    
    # Running processes
    f.write("\nTop Processes:\n")
    f.write(os.popen("ps aux --sort=-%mem | head -n 10").read())
    
print(f"System logs saved to {log_file}")

