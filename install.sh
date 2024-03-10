#!/bin/sh

stow --target="../.config/" config
stow home

sudo cp etc/modprobe/* /etc/modprobe.d/
sudo cp etc/X11/* /etc/X11/xorg.conf.d/

