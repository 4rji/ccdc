#!/bin/bash

# Define the line to add to the end of the file
new_line="command[check_uptime]=/usr/local/nagios/libexec/check_uptime"

# Add the new line to the end of the file
echo "$new_line" | sudo tee -a /usr/local/nagios/etc/nrpe.cfg >/dev/null

# Restart the nrpe service
sudo systemctl restart nrpe
