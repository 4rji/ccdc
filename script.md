#Create a working account `mctc`:

```
groupadd -g 999999 mctc
useradd -u 999999 -g 999999 -s/bin/bash -c"MCTC" -m mctc
passwd mctc
visudo -f /etc/sudoers.d/mctc

#Inspect the `/etc/sudoers` and `/etc/sudoers.d/*` files.

```
sudo ls /etc/sudoers.d/*  # you should see /etc/sudoers.d/mctc
sudo grep -v '^#' /etc/sudoers /etc/sudoers.d/* | less  

#Make sure default group for root is root (gid 0)
sudo grep "^root:" /etc/passwd | awk -F: '{print $4}'

Finally setup login banner to be used by SSH:

```
sudo touch /etc/mctcbanner
sudo chmod 644 /etc/mctcbanner
sudo chown root: /etc/mctcbanner
sudo mv /etc/issue /etc/issue.orig
sudo mv /etc/motd /etc/motd.orig
sudo ln -s /etc/mctcbanner /etc/issue
sudo ln -s /etc/mctcbanner /etc/motd
sudo vi /etc/mctcbanner
```

content of `/etc/mctcbanner`:
UNAUTHORIZED ACCESS TO THIS DEVICE IS PROHIBITED  
  
You must have explicit, authorized permission to access or configure this device.
Unauthorized attempts and actions to access or use this system may result in civil
and/or criminal penalties. All activities performed on this device are logged and
monitored.  


backup the file:
`sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.prev`

sudo vi /etc/ssh/sshd_config`

```
PermitRootLogin no
PermitEmptyPasswords no
KerberosAuthentication no
GSSAPIAuthentication no
X11Forwarding no
MaxAuthTries 3
LoginGraceTime 20
PermitUserEnvironment no
AllowAgentForwarding no
AllowTcpForwarding no
PermitTunnel no
MaxSessions 2
Compression no
TCPKeepAlive no
UseDNS no
LogLevel VERBOSE
ClientMaxAliveCount 2
Banner /etc/mctcbanner
DenyUsers mctc@!172.20.240.0/22,*
```	

Validate changes have taken effect via:

```
sudo sshd -T | less
```



How to limit SSH to only the competition subnet:
```
sudo firewall-cmd --permanent --zone=public --remove-service=ssh
sudo firewall-cmd --permanent --zone=public \
--add-rich-rule='rule family=ipv4 source address=172.20.240.0/22 service name=ssh \
log prefix="SSH Logs" level="notice" accept'
sudo firewall-cmd --reload
sudo firewall-cmd --list-all --zone=public


Blocking ICMP packets on firewalld:  
```
sudo firewall-cmd --set-target=DROP --zone=public --permanent
sudo firewall-cmd -zone=public --remove-icmp-block={echo-request,echo-reply, \  
timestamp-request,timestamp-reply} --permanent
sudo firewall-cmd --reload


Network daemons

Disable non-secure communication paths:  

Remove telnet and FTP

```
systemctl --now mask ftpd  
systemctl --now mask tftpd

# debian/ubuntu
apt remove telnet ftp ftpd tftp talk talkd tftp tftpd








-usermctc
-inspecsudo
-sshard 
Validate changes have taken effect via:
sudo sshd -T | less
-fired
