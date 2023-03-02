
#!/bin/bash

cp /usr/local/nagios/etc/objects/templates.cfg /usr/local/nagios/etc/objects/.templates.cfg.backup 
nano /usr/local/nagios/etc/objects/templates.cfg

mv templates.cfg /usr/local/nagios/etc/objects/
