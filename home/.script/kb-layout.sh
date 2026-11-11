#!/bin/sh

DEFAULT="br"

layout () {
	echo $(setxkbmap -print -verbose 10 | grep layout | awk '{print $2}')
} 

if [ $(layout) == $DEFAULT ] 
then
	setxkbmap us
	notify-send "Layout: us"
else
	setxkbmap br
	notify-send "Layout: br"
fi
