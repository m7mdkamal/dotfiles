#!/usr/bin/python 

import os

cmd = os.popen('playerctl -p spotify status').read()
cmd = cmd.split('\n')
cmd = cmd[0]

meta_artist = os.popen('playerctl -p spotify metadata xesam:artist').read().rstrip()
meta_title = os.popen('playerctl -p spotify metadata xesam:title').read().rstrip()

if cmd == "Playing":
    print(meta_title + ' | ' + meta_artist)

elif cmd == 'Paused':
    print(meta_title + ' | ' + meta_artist)

else:
    print('no music playing')
