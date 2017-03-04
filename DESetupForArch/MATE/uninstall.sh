#!/bin/bash

mates=`pacman -Sg mate | awk '{print $2}'`
mate_extras=`pacman -Sg mate-extra | awk '{print $2}'`

sudo pacman -Rs $mates $mate_extras caja-dropbox
