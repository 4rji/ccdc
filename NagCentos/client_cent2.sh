#!/bin/bash



yum install -y gcc glibc glibc-common openssl openssl-devel perl wget
useradd nagios
wget https://github.com/nagios-plugins/nagios-plugins/releases/download/release-2.4.3/nagios-plugins-2.4.3.tar.gz
tar -xzvf nagios-plugins-2.4.3.tar.gz 
cd nagios-plugins-2.4.3/
./configure
make install


wget https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-4.1.0/nrpe-4.1.0.tar.gz
tar -xzvf nrpe-4.1.0.tar.gz 
cd nrpe-4.1.0/
./configure
make all
make install 
make install-config
make install-init

systemctl enable nrpe
systemctl start nrpe



# Define the line to add to the end of the file
new_line="command[check_uptime]=/usr/local/nagios/libexec/check_uptime"

# Add the new line to the end of the file
echo "$new_line" | sudo tee -a /usr/local/nagios/etc/nrpe.cfg >/dev/null



# Restart the nrpe service

# Restart the nrpe service
#sudo systemctl restart nrpe

echo "Hola, aquí se ha ejecutado el script para agregar el ALLOWh."
echo "nano /usr/local/nagios/etc/nrpe.cfg"


#add the ip in allowed


