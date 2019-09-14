#!/usr/bin/env bash

cp ~/.Xresources ./.Xresources

# termite
cp ~/.config/termite/* ./termite

# polybar
cp ~/.config/polybar/config ./polybar
cp ~/.config/polybar/launch.sh ./polybar

# bin files
cp ~/bin/bat.sh ./bin/
cp ~/bin/vol.sh ./bin/
cp ~/bin/kubernetes.sh ./bin/
cp ~/bin/spotify.py ./bin/

# i3
cp ~/.config/i3/config ./i3/config
