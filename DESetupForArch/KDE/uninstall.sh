#!/usr/bin/bash
#plasmas=`cat plasma-apps`
plasmas=`pacman -Sg plasma | awk '{print $2}'`
kdebases=`pacman -Sg kdebase | awk '{print $2}'`
utils=`pacman -Sg kdeutils | awk '{print $2}'`
kdepims=`pacman -Sg kdepim | awk '{print $2}'`
kdesdks=`pacman -Sg kdesdk | awk '{print $2}'`
kf5s=`pacman -Sg kf5 | awk '{print $2}'`
kdenets=`pacman -Sg kdenetwork | awk '{print $2}'`

sudo systemctl disable sddm.service
sudo pacman -Rs $plasmas $kdebases $utils $kdepims $kdesdks $kf5s $kdenets kdebase-runtime okular dolphin-plugins digikam gwenview kdeconnect breeze-kde4 kalgebra cantor marble breeze breeze-gtk breeze-icons plasma5-applets-weather-widget kdiff3 kaffeine yakuake spectacle purpose ffmpegthumbs partitionmanager kcm-fcitx systemd-kcm kdegraphics-thumbnailers kde-thumbnailer-odf kio-extras plasma5-applets-places-widget archlinux-themes-sddm $@
