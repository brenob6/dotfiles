#!/bin/sh

if [ "$(setxkbmap -query | awk '/^layout/ {print $2}')" = "br" ]; then
	layout=us
else
	layout=br
fi

setxkbmap "$layout"
notify-send "Layout: $layout"
