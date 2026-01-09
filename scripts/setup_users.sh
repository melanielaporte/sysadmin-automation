#!/bin/bash
# setup_users.sh
# Creates a few sample users on Linux

echo "Starting user setup..."

# Array of users
USERS=("alice" "bob" "charlie")

for user in "${USERS[@]}"; do
    # Check if user exists
    if id "$user" &>/dev/null; then
        echo "User $user already exists!"
    else
        sudo useradd -m "$user"
        echo "$user:password123" | sudo chpasswd
        echo "User $user created with password 'password123'"
    fi
done

echo "User setup complete!"

