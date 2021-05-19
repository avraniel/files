#!/bin/bash
set -e
##################################################################################################################
# Author	:	Raniel Laguna
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#dependencies

sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist

paru -Syu --noconfirm



paru -S qtwebflix-git --noconfirm
paru -S polybar --noconfirm
paru -S dropbox --noconfirm

paru -S adapta-gtk-theme --noconfirm

paru -S xcursor-breeze-serie-obsidian --noconfirm

paru -S faba-icon-theme --noconfirm
paru -S halo-icons-git --noconfirm
paru -S zafiro-icon-theme --noconfirm
paru -S xcursor-simpleandsoft --noconfirm
paru -S popcorntime-bin --noconfirm
paru -S oh-my-bash-git --noconfirm --needed
paru -S ttf-fira-code --noconfirm --needed
#paru -S arcolinux-logout-themes-git --noconfirm --needed
paru -S audio-recorder --noconfirm --needed
paru -S openbox-patched --noconfirm --needed
paru -S sweet-gtk-theme-dark --noconfirm --needed
paru -S candy-icons-git --noconfirm --needed


cp -Rf ~/DATA/config/{termite,glava,arcologout,neofetch,polybar,plank,xfce4,openbox,rofi,spicetify,ranger} ~/.config
cp ~/DATA/config/.bashrc-personal ~/.bashrc-personal
cp ~/DATA/config/pipes-diagonal ~/.bin
cp -Rf ~/DATA/config/.cache ~/
cp ~/DATA/config/.zshrc ~/
cp ~/DATA/config/.zshrc-personal ~/
sudo cp -Rfv ~/DATA/config/lightdm.conf /etc/lightdm/lightdm.conf
cp -Rfv ~/DATA/config/.bashrc ~/.bashrc
cp -Rfv ~/DATA/config/.xinitrc ~/
cp -Rfv ~/DATA/config/nitrogen ~/.config
sh install-sardi-extra-icons-v3.sh
mv ~/DATA/config/openbox/rc.xml_rounded corner ~/.config/openbox/rc.xml
spotify
sh spicetify.sh
sh setup-git.sh

sudo reboot
