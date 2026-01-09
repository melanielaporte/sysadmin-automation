#!/bin/bash
# deploy_app.sh
# Deploys a tiny Python web app (Flask) for demo purposes

echo "Deploying tiny web app..."

# Install Python3 & pip if missing
sudo apt update
sudo apt install -y python3 python3-pip

# Install Flask
pip3 install flask

# Create a small Flask app
APP_FILE="tiny_app.py"

cat <<EOL > $APP_FILE
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Sysadmin Automation!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
EOL

echo "Flask app created: tiny_app.py"
echo "Run it with: python3 tiny_app.py"

