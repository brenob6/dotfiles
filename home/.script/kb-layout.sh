#!/bin/sh

DEFAULT="br"

layout () {
	echo $(setxkbmap -print -verbose 10 | grep layout | awk '{print $2}')
} 


if [ $# -eq 1 ]
then
	if [ $(layout) == $DEFAULT ] 
	then
		setxkbmap us
	else
		setxkbmap br
	fi
fi

echo $(layout)
