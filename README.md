# SysAdmin Automation
Automates core system-administration tasks on Linux using Bash and Python.
This project provisions users, installs software, and collects system health logs — a small but real example of how infrastructure is managed through code and demonstrate how I think about systems, automation, and repeatable environments, not just writing simple scripts.

## Project Goal
Build a lightweight, readable automation system that mirrors how real systems are deployed and maintained in production environments.
- Sets up a Linux machine from scratch
- Applies consistent configuration
- Produces useful operational data/logs
  
## What The Project Does
The system is driven by simple text files and scripts. Everything is controlled by a single entry point: main.sh
- Creates users from users.txt
- Installs software from software.txt
- Collects system stats like disk, memory, uptime into a log file

## Tech Stack/Skills
Linux, Bash, Python for future-parsing logs/adding dashboards, automtion, DevOps mindset

## How to Run (Virtual Machine(VM) or Raspberry Pi(RP))
1. Clone the repository
2. Install VMware Player (open source) or VirtualBox
3. Install Ubuntu Linux inside the VM or use RP
4. Open a terminal inside Linux
5. Run the scripts: bash scripts/main.sh --> system logs will be written to: logs/system_status.txt
6. Connect to a Raspberry Pi via the terminal
7. Run setup_users.sh
8. Run deploy_app.sh
9. Run collect_logs.sh

## Alternative: How to Run SysAdmin Automation Quickly
Without setting up a virtual machine (VM)
1. Use replit.com
2. Create a new Bash repl
3. Clone this repo into the repl
4. Make the scripts executable: chmod +x scripts/*.sh
5. Run it: bash scripts/main.sh
   
## Demo
![sda](https://github.com/user-attachments/assets/2e3bd19b-84a8-441a-acba-062591e73a06)

