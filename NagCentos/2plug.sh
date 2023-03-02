#!/bin/bash

wget https://github.com/nagios-plugins/nagios-plugins/releases/download/release-2.4.3/nagios-plugins-2.4.3.tar.gz
tar -xzvf nagios-plugins-2.4.3.tar.gz 
cd nagios-plugins-2.4.3/
./configure
make install
systemctl restart nagios
systemctl status nagios