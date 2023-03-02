#!/bin/bash

# define the text to add
text_to_add="define command {\n\tcommand_name check_nrpe\n\tcommand_line \$USER1\$/check_nrpe -H \$HOSTADDRESS\$ -c \$ARG1\$\n}"

# append the text to the file
echo -e "$text_to_add" | sudo tee -a /usr/local/nagios/etc/objects/commands.cfg > /dev/null



wget https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-4.1.0/nrpe-4.1.0.tar.gz
tar -xzvf nrpe-4.1.0.tar.gz 
cd nrpe-4.1.0/
./configure

make check_nrpe
make install-plugin
cd /usr/local/nagios/etc/objects
