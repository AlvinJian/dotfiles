#!/usr/bin/bash
gnome_extras=`cat gnome-extra-want`
sudo pacman -S gnome $gnome_extras gnome-clocks gedit-plugins lollypop gnome-boxes python2-nautilus eog-plugins && yaourt -S nautilus-dropbox gnome-mpv terminix gnome-shell-extension-dash-to-dock gnome-shell-pomodoro gnome-shell-extension-taskbar && sed -i 's/fcitx/ibus/g' ~/.xprofile && sudo systemctl enable gdm.service
