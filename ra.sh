#!/bin/sh
sudo rm -rf /etc/pacman.conf
sudo mv pacman.conf /etc/pacman.conf
sudo rm -rf /etc/pacman.d/mirrorlist
sudo mv mirrorlist /etc/pacman.d/mirrorlist
sudo rm -rf /etc/makepkg.conf
sudo mv makepkg.conf /etc/makepkg.conf
sudo pacman -Sy
sudo pacman --noconfirm -S archlinux-keyring --noconfim
sudo pacman --noconfirm -S wget curl fakeroot python patch make gcc cmake pkg-config 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
sudo pacman --noconfirm -Syyu
reboot
