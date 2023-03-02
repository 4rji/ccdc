#!/bin/bash


yum install -y gettext wget net-snmp-utils openssl-devel glibc-common unzip perl epel-release gcc php gd au$
yum install perl-Net-SNMP
useradd nagios
usermod -a -G nagios apache
wget https://github.com/NagiosEnterprises/nagioscore/releases/download/nagios-4.4.10/nagios-4.4.10.tar.gz
tar -xzvf nagios-4.4.10.tar.gz
cd nagios-4.4.10/
./configure
make all



make install
make install-init
make install-commandmode
make install-config
make install-webconf
systemctl enable nagios
systemctl enable httpd


systemctl start nagios
systemctl start httpd
systemctl status httpd
systemctl status nagios



