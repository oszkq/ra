#!/bin/sh
sudo pacman -Sy
sudo pacman -S archlinux-keyring --noconfim
sudo pacman -S wget curl fakeroot python build patch make gcc cmake pkg-config --noconfirm
sudo rm -rf /etc/pacman.conf
sudo mv pacman.conf /etc/pacman.conf
sudo rm -rf /etc/pacman.d/mirrorlist
sudo mv mirrorlist /etc/pacman.d/mirrorlist
sudo rm -rf /etc/makepkg.conf
sudo mv makepkg.conf /etc/makepkg.conf
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
sudo pacman -Syyu --noconfirm
reboot
