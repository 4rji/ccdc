#!/bin/bash


# Set the file path
file_path="/etc/selinux/config"

# Set the old and new strings
old_string="SELINUX=enforcing"
new_string="SELINUX=disabled"

# Check if the file exists
if [ -f "$file_path" ]; then
    # Replace the old string with the new string
    sed -i "s/$old_string/$new_string/g" "$file_path"
    echo "Replaced '$old_string' with '$new_string' in file '$file_path'"
else
    echo "Error: File '$file_path' not found"
fi

firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --reload
firewall-cmd --list
firewall-cmd --list-all
systemctl reboot # needs to restart machine