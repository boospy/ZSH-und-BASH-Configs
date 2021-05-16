#!/bin/bash

#
# (c) Mario Loderer
# linux@osit.cc
# https://deepdoc.at
#

echo -------------------------------------
echo "Das Script installiert die ZSHshell V2 als Default Rootshell und setzt Syntax Highlighting für Nano."
echo "Weiters wird eine Benutzervorlage für ZSH in /etc/skel abgelegt."
echo "Die Schriftart wird global im System installiert"
echo "Installer für Ubuntu 18/20.04, Proxmox 6.x" 
echo -------------------------------------
echo
echo "Zum vortsetzen ENTER drücken, oder STRG+C zum Abbrechen"
echo
read x

apt update
apt install zsh git finger -y
mkdir /usr/share/fonts/truetype/nerdfont && cd /usr/share/fonts/truetype/nerdfont
wget -O /tmp/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf https://darkdevil.osit.cc/gitlab/public-projects/zsh-und-bash-configs/raw/master/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf
mv /tmp/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf /usr/share/fonts/truetype/nerdfont/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf
fc-cache -fv
wget -O /root/.zshrc https://darkdevil.osit.cc/gitlab/public-projects/kde-neon-installer/raw/master/zshrc
wget -O /etc/skel/.zshrc https://darkdevil.osit.cc/gitlab/public-projects/kde-neon-installer/raw/master/zshrc
usermod -s /bin/zsh root
wget -O /tmp/nano.tar https://darkdevil.osit.cc/gitlab/public-projects/zsh-und-bash-configs/raw/master/nano_syntax_highlighting.tar
tar -xf /tmp/nano.tar -C /root
tar -xf /tmp/nano.tar -C /etc/skel
rm /tmp/nano.tar -f

echo
echo "Vergiss nicht in deinem Terminalprogramm die Schriftart auf Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf um zu stellen."
echo
echo

exit

