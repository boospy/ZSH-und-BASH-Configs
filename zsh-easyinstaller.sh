#!/bin/bash

#
# (c) Mario Loderer
# linux@osit.cc
# https://deepdoc.at
#

echo -------------------------------------
echo "The script installs the ZSHshell as default rootshell and sets syntax highlighting for Nano."
echo "Furthermore, a user template for ZSH is placed in /etc/skel."
echo "The font is installed globally in the system"
echo "Installer für Ubuntu 18/20.04/22.04" 
echo -------------------------------------
echo
echo "Press ENTER to continue, or CTRL+C to cancel."
echo
read x

apt update
apt install zsh git -y
mkdir /usr/share/fonts/truetype/nerdfont && cd /usr/share/fonts/truetype/nerdfont
wget -O /tmp/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf
mv /tmp/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf /usr/share/fonts/truetype/nerdfont/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf
fc-cache -fv
wget -O /root/.zshrc https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/zshrc-root
wget -O /etc/skel/.zshrc https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/zshrc-user
wget -O /root/.p10k.zsh https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/p10k.zsh-root
wget -O /etc/skel/.p10k.zsh https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/p10k.zsh-user
wget -O /root/.zplug https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/zplug-root.tar
usermod -s /bin/zsh root
wget -O /tmp/nano.tar https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/nano_syntax_highlighting.tar
tar -xf /tmp/nano.tar -C /root
tar -xf /tmp/nano.tar -C /etc/skel
rm /tmp/nano.tar -f

echo
echo "Don't forget to change the font in your terminal program to Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf."
echo
echo

exit
