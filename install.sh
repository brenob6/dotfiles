#!/bin/sh
set -e
cd "$(dirname "$0")"

stow --target="$HOME/.config" config
stow --target="$HOME" home

sudo cp etc/modprobe/* /etc/modprobe.d/
sudo cp etc/X11/* /etc/X11/xorg.conf.d/
