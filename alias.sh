#!/bin/zsh

#eliminamos los actuales y hacemos copia en /respaldo



# Copiar ~/.zshrc a /respaldos/zshrc
sudo cp ~/.zshrc /respaldos/zshrc.alias_backup



# Eliminar las líneas que comienzan con "alias" en ~/.zshrc
sed -i.bak '/^alias/d' ~/.zshrc

echo "Se ha realizado el respaldo y se han eliminado las líneas con 'alias' de ~/.zshrc"


echo ""

#custom alias
echo 'alias ll="lsd -lh --group-dirs=first"' >> ~/.zshrc
echo 'alias la="lsd -a --group-dirs=first"' >> ~/.zshrc
echo 'alias l="lsd --group-dirs=first"' >> ~/.zshrc
echo 'alias lla="lsd -lha --group-dirs=first"' >> ~/.zshrc
echo 'alias ls="lsd --group-dirs=first"' >> ~/.zshrc
echo 'alias cat="/bin/batcat --paging=never"' >> ~/.zshrc
echo 'alias catn="cat"' >> ~/.zshrc00
echo 'alias catnl="batcat"' >> ~/.zshrc


#ufw alias
echo "alias ufws='sudo ufw status'"  >> ~/.zshrc
echo "alias ufwe='sudo ufw enable'"  >> ~/.zshrc
echo "alias ufwr='sudo ufw reload'"  >> ~/.zshrc

#instalar zsh solamente
echo "alias c1='git clone https://github.com/romkatv/powerlevel10k.git \$ZSH_CUSTOM/themes/powerlevel10k'" >> ~/.zshrc
echo "alias c2='sed -i \"s/ZSH_THEME=\\\"robbyrussell\\\"/ZSH_THEME=\\\"powerlevel10k\/powerlevel10k\\\"/\" ~/.zshrc'" >> ~/.zshrc
echo "alias c3='sed -i \"s/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo)/\" ~/.zshrc'" >> ~/.zshrc
echo "alias c4='git clone https://github.com/zsh-users/zsh-autosuggestions \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'" >> ~/.zshrc
echo "alias c5='git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'" >> ~/.zshrc

#f2ban
echo "alias rs2='sudo nano /etc/rsyslog.conf'" >> ~/.zshrc 
echo "alias f2mod='sudo nano /etc/fail2ban/jail.local'" >> ~/.zshrc
echo "alias f2r='sudo systemctl restart fail2ban'" >> ~/.zshrc
echo "alias f2s='sudo systemctl status fail2ban'" >> ~/.zshrc

# Agregar alias a .zshrc
echo "alias smbserver='impacket-smbserver smbFolder \$(pwd) -smb2support'" >> ~/.zshrc
echo "alias kalideb='sudo cp /etc/apt/sources.list.kali /etc/apt/sources.list'" >> ~/.zshrc
echo "alias nokali='sudo cp /etc/apt/sources.list.debian /etc/apt/sources.list'" >> ~/.zshrc
echo "alias rmk='() { scrub -p dod \$1; shred -zun 10 -v \$1; }'" >> ~/.zshrc
echo "alias inst='sudo apt install'" >> ~/.zshrc
echo "alias bas='nano ~/.zshrc'" >> ~/.zshrc
echo "alias basrc='source ~/.zshrc'" >> ~/.zshrc
echo "alias mkt='mkdir content exploits nmap'" >> ~/.zshrc
echo "alias folder='cd /home/natasha/MaquinasHTB/'" >> ~/.zshrc
echo "alias apu='sudo apt update && sudo apt upgrade'" >> ~/.zshrc
echo "alias pg='ping 8.8.8.8 -c4'" >> ~/.zshrc
echo "alias kittyconf='nano ~/.config/kitty/kitty.conf'" >> ~/.zshrc
echo "alias acceder='echo "marca de la lavadora mayusculas y segundo renglon la letra c mas mi numero"'" >> ~/.zshrc

## de el archivo primera
echo "alias f2r='sudo systemctl restart fail2ban'" >> ~/.zshrc
echo "alias f2s='sudo systemctl status fail2ban'" >> ~/.zshrc
echo "alias expo2='extractPorts allPorts'" >> ~/.zshrc
echo "alias ippp='curl ifconfig.me'" >> ~/.zshrc
echo "alias surfeando='sudo anonsurf start'" >> ~/.zshrc
echo "alias servidor='python3 -m http.server 8000'"  >> ~/.zshrc
echo "alias shortc='nano ~/.config/sxhkd/sxhkdrc'"  >> ~/.zshrc

echo "alias tailscaleinst='curl -fsSL https://tailscale.com/install.sh | sh'"  >> ~/.zshrc
echo "alias vm-to='sudo apt install -y --reinstall open-vm-tools-desktop'" >> ~/.zshrc

echo "alias pantalla='nano ~/.config/bspwm/bspwmrc'"  >> ~/.zshrc
echo "alias notas='ranger $HOME/notas'"  >> ~/.zshrc
#nuevos
#echo "alias cx1='chmod +x '" >> ~/.zshrc
#echo "pgg" | cat - ~/.zshrc > temp && mv temp ~/.zshrc
echo "alias apagar='sudo shutdown -h now'"  >> ~/.zshrc
echo "alias fixsc='cd $HOME/4rji/fixed'" >> ~/.zshrc
#echo "alias bateria='acpi -b'" >> ~/.zshrc
#echo "alias bateria-f='upower -i /org/freedesktop/UPower/devices/battery_BAT0'" >> ~/.zshrc
echo "alias fixsssarch='sudo mv /usr/bin/ssa_arch /usr/bin/ssa'" >> ~/.zshrc
echo "alias bateria='acpi -b'" >> ~/.zshrc
echo "alias bateria-f='upower -i /org/freedesktop/UPower/devices/battery_BAT0'" >> ~/.zshrc


echo "alias mkdirr='function _mkdirr(){ mkdir "$1" && cd "$1" };_mkdirr'"  >> ~/.zshrc
echo "alias g4rji='f(){ git clone https://github.com/4rji/4rji.git && cd 4rji/; unset -f f; }; f'"  >> ~/.zshrc

echo "alias redr='sudo systemctl restart NetworkManager'"  >> ~/.zshrc
echo "alias dormir='sudo systemctl suspend'"  >> ~/.zshrc
echo "alias redr='sudo systemctl restart NetworkManager'"  >> ~/.zshrc
#echo 'alias mygpu="DRI_PRIME=1 glxinfo | grep \"OpenGL renderer\"" ' >> ~/.zshrc
echo 'alias pantallin="xrandr --output DP-1 --rotate left --auto --left-of eDP-1" ' >> ~/.zshrc

echo "alias vmware-tools='sudo apt install -y --reinstall open-vm-tools-desktop fuse3'"  >> ~/.zshrc
echo "alias fixwifi='sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf && sudo dhclient wlan0'"  >> ~/.zshrc
echo "alias wse='wormhole send '"  >> ~/.zshrc
echo "alias wre='wormhole receive '"  >> ~/.zshrc

echo "alias target1.1='cp ~/.config/bin/bateria_backup.sh ~/.config/bin/bateria.sh '"  >> ~/.zshrc

#newbin script with new alias
echo "alias jfirefox='firejail firefox '"  >> ~/.zshrc
echo "alias proxyc='ssh -D 1080 '"  >> ~/.zshrc
echo "alias sse='sudo nano /etc/ssh/sshd_config'"  >> ~/.zshrc
echo "alias ssr='sudo systemctl restart ssh'"  >> ~/.zshrc
echo "alias sst='sudo systemctl stop ssh'"  >> ~/.zshrc
echo "alias sss='sudo systemctl status ssh'"  >> ~/.zshrc

echo "alias blue='sudo systemctl start bluetooth.service'"  >> ~/.zshrc

echo "alias pwndoc='cat $HOME/Downloads/.pwndoc-main.md/pwndoc.md'"  >> ~/.zshrc
echo "alias scanporty='python3 /usr/bin/scanporty.py'"  >> ~/.zshrc
echo "alias itec='sudo openvpn ~/Downloads/.vpnitos/itec.ovpn'"  >> ~/.zshrc
echo "alias 4rj='cd $HOME/Documents/GitHub/4rji'"  >> ~/.zshrc

echo "alias 4rjic='python3 /usr/bin/4rjic'"  >> ~/.zshrc
echo "alias apag='sudo poweroff'"  >> ~/.zshrc
echo 'alias clipo='"'"'history -r | head -n 1 | awk "{\$1=\"\"; print \$0}" | xclip -selection clipboard'"'" >> ~/.zshrc
echo "alias dormir='systemctl suspend'" >> ~/.zshrc

#echo "alias busme='4rjic | grep '" >> ~/.zshrc
echo "alias matavpn='sudo killall openvpn'" >> ~/.zshrc
echo "alias wm='whoami'" >> ~/.zshrc
echo "alias dockercp='echo "ejecutar lo siguiente: docker cp ruta/del/archivo.txt nombre_o_id_del_contenedor:/ruta/del/contenedor/"'" >> ~/.zshrc
echo "alias osr='cat /etc/os-release'" >> ~/.zshrc
echo "alias chator='onionshare-cli --chat --public -v'" >> ~/.zshrc
echo "alias catr='batcat -l rb '" >> ~/.zshrc
