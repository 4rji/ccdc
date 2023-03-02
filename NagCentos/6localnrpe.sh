#!/bin/bash

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
systemctl status nrpe
firewall-cmd --list-all


#local host only

cd /usr/local/nagios/libexec/
./check_nrpe -H 127.0.0.1