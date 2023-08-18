**You would like to show your appreciation for our help 8-o. Gladly. We thank you for your donation! ;)**

<a href="https://www.paypal.com/donate/?hosted_button_id=JTFYJYVH37MNE">
  <img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif">
</a>

ZSH, Bash und Nano Config
=========================

**Tested on Ubuntu 20.04 and 22.04 LTS**

Here you find prefabricated Configs for Nano, ZSH and Bash. The shellconfigs are based on the project powerlevel10k.
[GIT Projekt Powerlevel10k](https://github.com/romkatv/powerlevel10k) and the font from here: [GIT Projekt Nerd-Fonts](https://github.com/ryanoasis/nerd-fonts) For V2, things like powerlevel10k were omitted for much lightwight.
You have the possibility to install Nano and ZSHconfigs with the automatic installer. For this simply use the [InstallerV1](https://git.osit.cc/public-projects/zsh-und-bash-configs/blob/master/zsh-easyinstaller.sh) or use another version [InstallerV2](https://git.osit.cc/public-projects/zsh-und-bash-configs/blob/master/zsh-easyinstallerV2.sh) download, make executable and run.

INSTALLATION
------------

Run the following commands with SUDO or in a rootshell. Use the version you like.

**V1**
~~~
wget https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/zsh-easyinstaller.sh
chmod +x zsh-easyinstaller.sh
./zsh-easyinstaller.sh
~~~

**V2**
~~~
wget https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/zsh-easyinstallerV2.sh
chmod +x zsh-easyinstallerV2.sh
./zsh-easyinstallerV2.sh
~~~


Bashrc has the following modifications:

  * The limitation of the history to a certain number has been removed.
  * Bash does not write the history only at logout, but in live mode.

BUG
---

After the installtion is ready and you have your new ZSH active and running, you should disable on your useraccount the updatefeature for zplug. It seems to be broken. 

Comment out this lines with "#" from your ".zshrc"
~~~
if ! zplug check; then
    printf "Install plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
~~~

