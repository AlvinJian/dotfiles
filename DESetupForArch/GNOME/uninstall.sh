#!/usr/bin/bash
gnomes=`cat gnome-tobe-removed`
gnome_extras=`cat gnome-extra-want-tobe-removed`
gnome_shell_ext=`pacman -Q | egrep gnome-shell-extension | awk '{print $1}'`

sudo systemctl disable gdm.service
sudo pacman -Rs $gnomes $gnome_extras gedit-plugins python2-nautilus nautilus-dropbox gnome-boxes eog-plugins $gnome_shell_ext $@
