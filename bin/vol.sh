#!/usr/bin/env bash

valueColor="$(xrdb -query | grep -w polybarValue | head -n1 | awk '{print $2}')"
keyColor="$(xrdb -query | grep -w polybarKey | head -n1 | awk '{print $2}')"

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
			echo -ne "%{F$keyColor}vol %{F$valueColor}$cur_vol"
			;;
	esac
done