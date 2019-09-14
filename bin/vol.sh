#!/usr/bin/env bash

fg="$(xrdb -query | grep -w color0 | head -n1 | awk '{print $2}')"
light="$(xrdb -query | grep -w color8 | head -n1 | awk '{print $2}')"

while getopts idq options
do
	case $options in
		i)
			amixer sset Master 2%+
			;;

		d)
			amixer sset Master 2%-
			;;
		q)
			cur_vol=$(amixer get Master | grep 'Mono' | awk -F'[][]' '{ print $2 }' | tr -d '\n')
			echo -ne "%{F$light}vol %{F$fg}$cur_vol"
			;;
	esac
done