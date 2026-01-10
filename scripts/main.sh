#!/bin/bash

echo "Starting SysAdmin Automation..."
echo "-------------------------------"

echo "Provisioning users..."
bash setup_users.sh

echo ""
echo "Deploying software..."
bash deploy_app.sh

echo ""
echo "Collecting system logs..."
bash collect_logs.sh

echo ""
echo "Automation complete."
echo "Logs written to ../logs/system_status.txt"
