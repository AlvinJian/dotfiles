#!/bin/sh
apps=$(cat xfce4.mod)
sudo pacman -Rs $apps
