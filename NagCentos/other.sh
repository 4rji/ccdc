#!/bin/bash

cd /usr/local/nagios/etc
htpasswd -b htpasswd.users monitor monitor

#maybe I can add this from interval, chekc tomorrow

cp /usr/local/nagios/etc/objects/templates.cfg /usr/local/nagios/etc/objects/.templates.cfg.backup 
nano /usr/local/nagios/etc/objects/templates.cfg

mv templates.cfg /usr/local/nagios/etc/objects/



# Set the variables for the old and new values
old_refresh_rate="refresh_rate=90"
new_refresh_rate="refresh_rate=15"
old_auth_services="authorized_for_all_services=nagiosadmin"
new_auth_services="authorized_for_all_services=nagiosadmin,monitor"
old_auth_hosts="authorized_for_all_hosts=nagiosadmin"
new_auth_hosts="authorized_for_all_hosts=nagiosadmin,monitor"
new_auth_readonly="authorized_for_read_only=monitor"

# Replace the old values with the new values in the file
sed -i "s/${old_refresh_rate}/${new_refresh_rate}/" /usr/local/nagios/etc/cgi.cfg
sed -i "s/${old_auth_services}/${new_auth_services}/" /usr/local/nagios/etc/cgi.cfg
sed -i "s/${old_auth_hosts}/${new_auth_hosts}/" /usr/local/nagios/etc/cgi.cfg

# Add the new line to the end of the file
echo "${new_auth_readonly}" >> /usr/local/nagios/etc/cgi.cfg


