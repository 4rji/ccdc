#!/bin/bash


echo "alias npr='systemctl restart nrpe'" >> ~/.bashrc



useradd nagios
yum install -y gcc glibc glibc-common openssl openssl-devel perl wget
wget https://github.com/nagios-plugins/nagios-plugins/releases/download/release-2.4.3/nagios-plugins-2.4.3.tar.gz
tar -xzvf nagios-plugins-2.4.3.tar.gz 
wget https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-4.1.0/nrpe-4.1.0.tar.gz
tar -xzvf nrpe-4.1.0.tar.gz 

wget https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-4.1.0/nrpe-4.1.0.tar.gz
tar -xzvf nrpe-4.1.0.tar.gz 


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

firewall-cmd --permanent --add-port=5666/tcp
firewall-cmd --reload




systemctl reboot



