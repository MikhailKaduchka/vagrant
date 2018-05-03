#!/bin/sh

sudo apt-get update -y
sudo apt-get upgrade -y

# Zsh
sudo apt-get install -y zsh git
sudo chsh vagrant -s /bin/zsh

# X
sudo apt-get install -y --no-install-recommends xserver-xorg xserver-xorg-core xfonts-base xinit x11-xserver-utils lightdm lightdm-gtk-greeter
# Mate
sudo apt-get install -y --no-install-recommends mate-desktop mate-terminal mate-control-center mate-menu mate-panel mate-session-manager mate-themes marco caja

# VBGuest Addon
#sudo apt install -y linux-headers-$(uname -r) gcc make perl
#wget https://download.virtualbox.org/virtualbox/5.2.10/VBoxGuestAdditions_5.2.10.iso
#mkdir iso
#sudo mount -o loop VBoxGuestAdditions_5.2.10.iso iso
#sudo sh iso/VBoxLinuxAdditions.run
#sudo umount iso
# rm -rf iso VBoxGuestAdditions_5.2.10.iso

sudo systemctl restart lightdm.service

sudo apt-get install -y firefox

# Java env
#sudo apt-get install -y openjdk-8-jdk-headless maven

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
