ZSH, Bash und Nano Config
=========================

Hier findest du vorgefertigte Configs für Nano, ZSH und Bash. Die Shellconfigs basieren auf dem Projekt powerlevel10k.
[GIT Projekt Powerlevel10k](https://github.com/romkatv/powerlevel10k) und der Font von hier: [GIT Projekt Nerd-Fonts](https://github.com/ryanoasis/nerd-fonts) Für V2 wurden Dinge wie Powerlevel10k weggelassen. 
Du hast die Möglichkeit mit dem automatischem Installer Nano und ZSHconfigs zu installieren. Hierfür einfach den [InstallerV1](https://git.osit.cc/public-projects/zsh-und-bash-configs/blob/master/zsh-easyinstaller.sh) oder am besten gleich [InstallerV2](https://git.osit.cc/public-projects/zsh-und-bash-configs/blob/master/zsh-easyinstallerV2.sh) herunterladen, ausführbar machen und ausführen. 

INSTALLATION
------------

Folgende Befehle mit SUDO oder in einer Rootshell ausführen.

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


Die Bashrc hat folgende Modfikationen: 

  * Die Limitierung der History auf eine bestimmte Anzahl wurde entfernt.
  * Bash schreibt die History nicht erst beim Logout, sondern im Livemodus.
