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

# i3
cp ~/.config/i3/config ./i3/config

# starship
cp ~/.config/starship.toml  ./starship.toml